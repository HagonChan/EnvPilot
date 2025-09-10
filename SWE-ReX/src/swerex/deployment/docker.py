import logging
import shlex
import subprocess
import time
import uuid
import threading
from typing import Any

from typing_extensions import Self

from swerex import PACKAGE_NAME, REMOTE_EXECUTABLE_NAME
from swerex.deployment.abstract import AbstractDeployment
from swerex.deployment.config import DockerDeploymentConfig
from swerex.deployment.hooks.abstract import CombinedDeploymentHook, DeploymentHook
from swerex.exceptions import DeploymentNotStartedError, DockerPullError
from swerex.runtime.abstract import IsAliveResponse
from swerex.runtime.config import RemoteRuntimeConfig
from swerex.runtime.remote import RemoteRuntime
from swerex.utils.free_port import find_free_port
from swerex.utils.log import get_logger
from swerex.utils.wait import _wait_until_alive

__all__ = ["DockerDeployment", "DockerDeploymentConfig"]


def _is_image_available(image: str) -> bool:
    try:
        subprocess.check_call(["docker", "inspect", image], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return True
    except subprocess.CalledProcessError:
        return False


def _pull_image(image: str) -> bytes:
    try:
        subprocess.run(
            ["docker", "inspect", image],
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )
        subprocess.run(
            ["docker", "rmi", image],
            check=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
        )
        print(f"Deleted local image: {image}")
    except subprocess.CalledProcessError:
        print(f"Image {image} does not exist locally. Skipping delete...")

    try:
        return subprocess.check_output(["docker", "pull", image], stderr=subprocess.PIPE)
    except subprocess.CalledProcessError as e:
        # e.stderr contains the error message as bytes
        raise subprocess.CalledProcessError(e.returncode, e.cmd, e.output, e.stderr) from None


def _remove_image(image: str) -> bytes:
    return subprocess.check_output(["docker", "rmi", image], timeout=30)


class DockerDeployment(AbstractDeployment):
    def __init__(
        self,
        *,
        logger: logging.Logger | None = None,
        **kwargs: Any,
    ):
        """Deployment to local docker image.

        Args:
            **kwargs: Keyword arguments (see `DockerDeploymentConfig` for details).
        """
        self._config = DockerDeploymentConfig(**kwargs)
        self._runtime: RemoteRuntime | None = None
        self._container_process = None
        self._container_name = None
        self.logger = logger or get_logger("rex-deploy")
        self._runtime_timeout = 0.15
        self._hooks = CombinedDeploymentHook()
    def _log_stream(self, stream, prefix):
        for line in iter(stream.readline, b''):
            if line:
                self.logger.info(f"{prefix}: {line.decode(errors='ignore').strip()}")
    def add_hook(self, hook: DeploymentHook):
        self._hooks.add_hook(hook)

    @classmethod
    def from_config(cls, config: DockerDeploymentConfig) -> Self:
        return cls(**config.model_dump())

    def _get_container_name(self) -> str:
        """Returns a unique container name based on the image name."""
        image_name_sanitized = "".join(c for c in self._config.image if c.isalnum() or c in "-_.")
        return f"{image_name_sanitized}-{uuid.uuid4()}"

    @property
    def container_name(self) -> str | None:
        return self._container_name

    async def is_alive(self, *, timeout: float | None = None) -> IsAliveResponse:
        """Checks if the runtime is alive. The return value can be
        tested with bool().

        Raises:
            DeploymentNotStartedError: If the deployment was not started.
        """
        if self._runtime is None:
            msg = "Runtime not started"
            raise RuntimeError(msg)
        if self._container_process is None:
            msg = "Container process not started"
            raise RuntimeError(msg)
        if self._container_process.poll() is not None:
            msg = "Container process terminated."
            output = "stdout:\n" + self._container_process.stdout.read().decode()  # type: ignore
            output += "\nstderr:\n" + self._container_process.stderr.read().decode()  # type: ignore
            msg += "\n" + output
            raise RuntimeError(msg)
        return await self._runtime.is_alive(timeout=timeout)

    async def _wait_until_alive(self, timeout: float = 10.0):
        try:
            return await _wait_until_alive(self.is_alive, timeout=timeout, function_timeout=self._runtime_timeout)
        except TimeoutError as e:
            self.logger.error("❌ Runtime did not start within timeout.")
            
            if self._container_process:
                self.logger.error("📤 [Container STDOUT]")
                try:
                    stdout = self._container_process.stdout.read().decode(errors="ignore")
                    self.logger.error(stdout)
                except Exception as ex:
                    self.logger.error(f"Failed to read stdout: {ex}")

                self.logger.error("📥 [Container STDERR]")
                try:
                    stderr = self._container_process.stderr.read().decode(errors="ignore")
                    self.logger.error(stderr)
                except Exception as ex:
                    self.logger.error(f"Failed to read stderr: {ex}")

            await self.stop()
            raise e

    def _get_token(self) -> str:
        return str(uuid.uuid4())

    def _get_swerex_start_cmd(self, prefix_cmd, token: str) -> list[str]:
        rex_args = f"--auth-token {token}"
        pipx_install = "python3 -m pip install pipx && python3 -m pipx ensurepath"
        if self._config.python_standalone_dir: #进到这个里了
            sed_cmd=  'sed -i \'s|env={"PS1": self._ps1, "PS2": "", "PS0": ""}|env=dict(os.environ.copy(), **{"PS1": self._ps1, "PS2": "", "PS0": ""})|\' /root/venv/lib/python3.11/site-packages/swerex/runtime/local.py'
            sed_cmd1= "sed -i '1i import os\n' /root/venv/lib/python3.11/site-packages/swerex/runtime/local.py"
            cmd = f'{prefix_cmd} && {sed_cmd} && {sed_cmd1} && {REMOTE_EXECUTABLE_NAME} {rex_args}'
        else:
            cmd = f"{prefix_cmd} && {REMOTE_EXECUTABLE_NAME} {rex_args} || ({pipx_install} && pipx run {PACKAGE_NAME} {rex_args})"
        # Need to wrap with /bin/sh -c to avoid having '&&' interpreted by the parent shell
        return [
            "/bin/sh",
            # "/bin/bash",
            # "-l",
            "-c",
            cmd,
        ]

    def _pull_image(self) -> None:
        if self._config.pull == "never":
            return
        if self._config.pull == "missing" and _is_image_available(self._config.image):
            return
        self.logger.info(f"Pulling image {self._config.image!r}")
        self._hooks.on_custom_step("Pulling docker image")
        try:
            _pull_image(self._config.image)
        except subprocess.CalledProcessError as e:
            msg = f"Failed to pull image {self._config.image}. "
            msg += f"Error: {e.stderr.decode()}"
            msg += f"Output: {e.output.decode()}"
            raise DockerPullError(msg) from e

    @property
    def glibc_dockerfile(self) -> str:
        # will only work with glibc-based systems
        if self._config.platform:
            platform_arg = f"--platform={self._config.platform}"
        else:
            platform_arg = ""

        return (
            "ARG BASE_IMAGE\n\n"
            f"FROM {platform_arg} $BASE_IMAGE\n\n"
             "ARG http_proxy\n\n"
            "ARG https_proxy\n\n"
            "ARG no_proxy\n\n"
            "ENV http_proxy=$http_proxy\n\n"
            "ENV https_proxy=$https_proxy\n\n"
            "ENV NO_PROXY=$no_proxy\n"
        )
        

    def _build_image(self) -> str:
        """Builds image, returns image ID."""
        dockerfile = self.glibc_dockerfile
        platform_arg = []
        if self._config.platform:
            platform_arg = ["--platform", self._config.platform]
        build_cmd = [
            "docker",
            "build",
            "-q",
            # '--progress=plain',
            *platform_arg,
            "--build-arg",
            f"BASE_IMAGE={self._config.image}",
            '--build-arg', 'http_proxy=http://sys-proxy-rd-relay.byted.org:8118',
            '--build-arg', 'https_proxy=http://sys-proxy-rd-relay.byted.org:8118',
            "-",
        ]
        image_id = (
            subprocess.check_output(
                build_cmd,
                input=dockerfile.encode(),
            )
            .decode()
            .strip()
        )
        if not image_id.startswith("sha256:"):
            msg = f"Failed to build image. Image ID is not a SHA256: {image_id}"
            raise RuntimeError(msg)
        return image_id

    async def start(self):
        """Starts the runtime."""
        self._pull_image()
        if self._config.python_standalone_dir is not None:
            image_id = self._build_image()
        else:
            image_id = self._config.image
        if self._config.port is None:
            self._config.port = find_free_port()
        assert self._container_name is None
        self._container_name = self._get_container_name()
        token = self._get_token()
        platform_arg = []
        if self._config.platform is not None:
            platform_arg = ["--platform", self._config.platform]
        cmds = [
            "docker",
            "run",
            "--rm",
            "--volumes-from",
            "nix_swe",
            "-p",
            f"{self._config.port}:8000",
            *platform_arg,
            *self._config.docker_args,
            "--name",
            self._container_name,
            image_id,
            *self._get_swerex_start_cmd(prefix_cmd= "/nix/swalm/nix-env/bin/python -m venv /root/venv && /root/venv/bin/pip install --no-cache-dir swe-rex && ln -s /root/venv/bin/swerex-remote /usr/local/bin/swerex-remote",
                                         token=token)
        ]
        cmd_str = shlex.join(cmds)

        self.logger.info(
            f"Starting container {self._container_name} with image {self._config.image} serving on port {self._config.port}"
        )
        self.logger.debug(f"Command: {cmd_str!r}")
        # shell=True required for && etc.
        self._container_process = subprocess.Popen(cmds, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        threading.Thread(target=self._log_stream, args=(self._container_process.stdout, "STDOUT"), daemon=True).start()
        threading.Thread(target=self._log_stream, args=(self._container_process.stderr, "STDERR"), daemon=True).start()
        self._hooks.on_custom_step("Starting runtime")
        self.logger.info(f"Starting runtime at {self._config.port}")
        self._runtime = RemoteRuntime.from_config(
            RemoteRuntimeConfig(port=self._config.port, timeout=self._runtime_timeout, auth_token=token)
        )
        t0 = time.time()
        await self._wait_until_alive(timeout=self._config.startup_timeout)
        self.logger.info(f"Runtime started in {time.time() - t0:.2f}s")



    async def stop(self):
        """Stops the runtime."""
        if self._runtime is not None:
            await self._runtime.close()
            self._runtime = None

        if self._container_process is not None:
            try:
                subprocess.check_call(
                    ["docker", "kill", self._container_name],  # type: ignore
                    stdout=subprocess.DEVNULL,
                    stderr=subprocess.DEVNULL,
                    timeout=30,
                )
            except (subprocess.CalledProcessError, subprocess.TimeoutExpired) as e:
                self.logger.warning(f"Failed to kill container {self._container_name}: {e}", exc_info=True)
            for _ in range(3):
                self._container_process.kill()
                try:
                    self._container_process.wait(timeout=5)
                    break
                except subprocess.TimeoutExpired:
                    continue
            else:
                self.logger.warning(f"Failed to kill container {self._container_name} with SIGKILL")

            self._container_process = None
            self._container_name = None

        if self._config.remove_images:
            if _is_image_available(self._config.image):
                self.logger.info(f"Removing image {self._config.image}")
                try:
                    _remove_image(self._config.image)
                except subprocess.CalledProcessError:
                    self.logger.error(f"Failed to remove image {self._config.image}", exc_info=True)

    @property
    def runtime(self) -> RemoteRuntime:
        """Returns the runtime if running.

        Raises:
            DeploymentNotStartedError: If the deployment was not started.
        """
        if self._runtime is None:
            raise DeploymentNotStartedError()
        return self._runtime
