# Getting Started Guide

This guide will help you quickly set up and run the EnvPilot environment configuration evaluation system.

## Overview

EnvPilot is an automated environment configuration agent. The system includes the following core components:

-   **SWE-Agent**: Agent with powerful Agent-computer interface (ACI).
-   **SWE-ReX**: Remote execution runtime environment
-   **Docker Environment**: Isolated test execution environment
-   **Experience Memory**: Useful Experience for environment configuration

## Prerequisites

Before starting, please ensure your system has the following software installed:

-   Python 3.11+
-   Docker
-   Git

## Installation Steps

### Step 1: Install Dependencies

Install the required Python packages in the following order:

```bash
# 1. Upgrade pip and install SWE-Agent
# use conda or uv to create a virtual environment
conda create -n envpilot python=3.11
conda activate envpilot
pip install --editable .

# 2. Install SWE-ReX runtime environment
cd SWE-ReX/
pip install -e . && cd ..
```

### Step 2: Set up Docker Environment

Set up the necessary Docker container environment:

```bash
# Pull the base Docker image
docker pull aoyanli/nix_swe:latest

# Create named container (Important: container name is used in docker.py)
docker run --name nix_swe aoyanli/nix_swe:latest true
```

**Important**: The container name `nix_swe` is hardcoded in the system, please do not modify it.

### Step 3: Build Environment Image

Run the following command to build the Docker image required for Stage3.2:

```bash
python gen_env_dockerfile.py
```

**Proxy Configuration**: If you need to use a proxy network during the build process, please edit the `gen_env_dockerfile.py` file:

-   If u need configure proxy:
-   Find the proxy configuration code around line 67
-   Uncomment and modify it to your proxy address
-   For example: `ENV http_proxy=http://your-proxy:port`

### Step 4: Configure Memory Database

Configure Milvus Vector Databse:

```bash
pip install pymilvus[model]
cd sweagent/memory
sudo docker compose up -d
```

Here is two way to use emebdding model:

```bash
pip install -U huggingface_hub
hf download Qwen/Qwen3-Embedding-8B
bash deploy_embedding.sh # run before modify the cache dir
```

## Evaluation Guide

Edit the `test.sh` script to configure the following key parameters:

1. **Run environment configuration tests**:

    ```bash
    bash test.sh deepseek-v3
    ```

2. **View results**: Check the generated evaluation reports and log files (you can find the results in the `trajectories_PrepareScript` directory)

## Supplementary Material

📄 [Supplementary Material](./Supplementary%20Material.pdf) - Click to download and view the PDF
