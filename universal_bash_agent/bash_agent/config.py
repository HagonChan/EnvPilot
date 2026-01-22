"""配置类"""

import os
from dataclasses import dataclass, field
from typing import Optional
from pathlib import Path
from dotenv import load_dotenv

# 加载 .env 文件
env_path = Path(__file__).parent.parent / ".env"
load_dotenv(dotenv_path=env_path)


@dataclass
class AgentConfig:
    """Agent 配置"""
    
    # Docker 配置
    docker_image: str = "ubuntu:22.04"
    
    # LLM 配置
    model_name: str = os.getenv("MODEL_NAME", "gpt-4o")
    temperature: float = 0.0
    api_key: str = os.getenv("OPENAI_API_KEY", "")
    base_url: str = os.getenv("OPENAI_BASE_URL", "https://api.openai.com/v1")
    
    # 执行配置
    max_iterations: int = 50
    bash_timeout: int = 300
    max_output_chars: int = 50000
    
    # 输出配置
    output_dir: str = "./output"
    repos_dir: str = "./repos"
