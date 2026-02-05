"""Universal Setup Agent - 语言无关的环境配置 Agent"""

from .main import run_setup, run_batch_setup
from .config import AgentConfig

__all__ = ["run_setup", "run_batch_setup", "AgentConfig"]
