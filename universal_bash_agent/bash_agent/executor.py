"""Docker Bash 执行器 - 在 Docker 容器中执行 bash 命令"""

import asyncio
import logging
import os
import uuid
from typing import Dict, List, Optional, Tuple, TypedDict

from aiodocker import Docker
from aiodocker.containers import DockerContainer
from aiodocker.exceptions import DockerError
from aiodocker.execs import Exec
from aiodocker.stream import Stream


class CommandResult(TypedDict):
    command: str
    exit_code: Optional[int]
    output: str


class DockerBashExecutor:
    """在 Docker 容器中执行 bash 命令"""
    
    DEFAULT_COMMAND = "while true; do sleep 1000; done"
    
    def __init__(
        self,
        image: str,
        workdir: str,
        docker_client: Docker,
        container: DockerContainer,
        exec_instance: Exec,
        exec_stream: Stream,
        bash_timeout: int = 300,
        max_output_chars: int = 50000,
    ):
        self.image = image
        self.workdir = workdir
        self.client = docker_client
        self.container = container
        self.exec_instance = exec_instance
        self.exec_stream = exec_stream
        self.bash_timeout = bash_timeout
        self.max_output_chars = max_output_chars
        self.commands_history: List[CommandResult] = []
        self._command_lock = asyncio.Lock()
    
    @classmethod
    async def create(
        cls,
        image: str,
        local_repo_path: str,
        bash_timeout: int = 300,
        max_output_chars: int = 50000,
    ) -> "DockerBashExecutor":
        """创建执行器"""
        client = Docker()
        
        try:
            # 拉取镜像
            try:
                logging.info(f"Checking if image '{image}' exists...")
                await client.images.inspect(image)
                logging.info(f"Image '{image}' exists locally.")
            except DockerError as e:
                if e.status == 404:
                    logging.info(f"Pulling image '{image}'... (this may take a few minutes)")
                    await asyncio.wait_for(client.images.pull(image), timeout=600)
                    logging.info(f"Image '{image}' pulled successfully.")
                else:
                    raise
            
            # 计算容器内路径
            repo_name = os.path.basename(local_repo_path)
            container_workdir = f"/workspace/{repo_name}"
            
            # 创建容器
            logging.info("Creating Docker container...")
            container = await client.containers.create({
                "Image": image,
                "Cmd": ["-c", cls.DEFAULT_COMMAND],
                "Entrypoint": "/bin/bash",
                "Detach": True,
                "WorkingDir": container_workdir,
                "HostConfig": {
                    "Binds": [f"{os.path.abspath(local_repo_path)}:{container_workdir}:rw"]
                },
            })
            logging.info(f"Container {container.id[:12]} created, starting...")
            await container.start()
            logging.info(f"Container {container.id[:12]} started.")
            
            # 等待容器就绪
            logging.info("Waiting for container to be ready...")
            for i in range(30):
                info = await container.show()
                if info["State"].get("Running"):
                    logging.info("Container is running.")
                    break
                await asyncio.sleep(0.1)
            else:
                raise RuntimeError("Container failed to start")
            
            # 创建 exec
            logging.info("Creating bash exec instance...")
            exec_instance = await asyncio.wait_for(
                container.exec(
                    ["/bin/bash"],
                    workdir=container_workdir,
                    stdin=True,
                    stdout=True,
                    stderr=True,
                ),
                timeout=30
            )
            logging.info("Starting exec stream...")
            exec_stream = exec_instance.start(detach=False)
            logging.info("Initializing exec stream...")
            await asyncio.wait_for(exec_stream._init(), timeout=30)
            logging.info("Exec stream initialized successfully.")
            
            return cls(
                image=image,
                workdir=container_workdir,
                docker_client=client,
                container=container,
                exec_instance=exec_instance,
                exec_stream=exec_stream,
                bash_timeout=bash_timeout,
                max_output_chars=max_output_chars,
            )
            
        except Exception:
            await client.close()
            raise
    
    async def execute(self, command: str) -> Tuple[str, int]:
        """执行 bash 命令"""
        async with self._command_lock:
            command_id = uuid.uuid4().hex
            end_marker = f"__END_{command_id}__"
            
            full_command = f"{command}\nexit_code=$?\necho __EXIT_CODE__ $exit_code\necho {end_marker}\n"
            await self.exec_stream.write_in(full_command.encode())
            
            output = b""
            exit_code = 0
            
            while True:
                try:
                    msg = await asyncio.wait_for(
                        self.exec_stream.read_out(), 
                        timeout=self.bash_timeout
                    )
                except asyncio.TimeoutError:
                    output += b"\n[TIMEOUT]"
                    exit_code = -1
                    break
                    
                if msg is None:
                    break
                    
                if msg.stream in (1, 2):  # stdout or stderr
                    output += msg.data
                    if end_marker.encode() in output:
                        break
            
            # 解析输出
            output_str = output.decode("utf-8", errors="replace")
            output_str = output_str.split(end_marker)[0].strip()
            
            if "__EXIT_CODE__" in output_str:
                parts = output_str.rsplit("__EXIT_CODE__", 1)
                output_str = parts[0].strip()
                try:
                    exit_code = int(parts[1].strip())
                except:
                    pass
            
            # 截断过长输出
            if len(output_str) > self.max_output_chars:
                half = self.max_output_chars // 2
                output_str = f"{output_str[:half]}\n\n[... truncated ...]\n\n{output_str[-half:]}"
            
            # 记录历史
            self.commands_history.append({
                "command": command,
                "exit_code": exit_code,
                "output": output_str,
            })
            
            return output_str, exit_code
    
    async def cleanup(self):
        """清理容器"""
        try:
            await self.container.stop()
            await self.container.delete(force=True)
            logging.info(f"Container cleaned up.")
        except Exception as e:
            logging.warning(f"Cleanup error: {e}")
        finally:
            await self.client.close()
