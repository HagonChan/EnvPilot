import os
import re
import subprocess
from pathlib import Path
import shutil
import json
from concurrent.futures import ThreadPoolExecutor, as_completed

output_dir = Path("/home/lhy/work/Env-Bench-Code/EnvBench/docker_images/stage3_2")


def build_docker_image(dockerfile_path, org, repo, pr):
    image_name = f"mswebench_env/{org.lower()}_{repo.lower()}:pr-{pr}"
    try:
        delete_result = subprocess.run(
            ["docker", "rmi", "-f", f"{image_name}"],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
            check=False,
        )
        if delete_result.returncode == 0:
            print(f"✅ Successfully deleted old image: {image_name}")
    except Exception as e:
        print(f"🚨 Failed to delete image: {str(e)}")

    try:
        build_cmd = ["docker", "build", "-t", f"{image_name}", dockerfile_path]
        print(f"🔨 Building image: {image_name}")
        subprocess.run(build_cmd, check=True, capture_output=True, text=True)
        print(f"✅ Successfully built image: {image_name}")
    except subprocess.CalledProcessError as e:
        print(f"🚨 Failed to build image {image_name}")
        print("Error:", e.stderr)


def gen_dockerfile_image(args):
    org, repo, pr, commit = args

    dockerfile = f"""
    FROM --platform=linux/x86_64 ubuntu:22.04
    ENV http_proxy=http://172.31.233.4:7890
    ENV https_proxy=http://172.31.233.4:7890
    RUN touch /etc/apt/sources.list
    RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
    ENV DEBIAN_FRONTEND=noninteractive
    RUN apt-get update && apt-get install -y git
    WORKDIR /home/
    RUN git clone -o origin https://github.com/{org}/{repo} /testbed
    RUN chmod -R 777 /testbed
    WORKDIR /testbed
    RUN git reset --hard {commit}
    RUN git remote remove origin
    """

    ins_dir = output_dir / "image" / org / repo / f"pr-{pr}"
    ins_dir.mkdir(parents=True, exist_ok=True)
    with open(ins_dir / "Dockerfile", "w") as f:
        f.write(dockerfile)

    return build_docker_image(ins_dir, org, repo, pr)


def main():
    filepath = "data/test_data.jsonl"
    if os.path.exists(filepath):
        selected_prs = []
        with open(filepath, "r") as f:
            for line in f:
                record = json.loads(line)
                org = record["org"]
                repo = record["repo"]
                pr = record["number"]
                commit = record["commit"]
                selected_prs.append((org, repo, pr, commit))

        with ThreadPoolExecutor(max_workers=8) as executor:
            futures = [executor.submit(gen_dockerfile_image, args) for args in selected_prs]

            for future in as_completed(futures):
                res = future.result()


if __name__ == "__main__":
    main()
