# Copyright (2025) Bytedance Ltd. and/or its affiliates 

# Licensed under the Apache License, Version 2.0 (the "License"); 
# you may not use this file except in compliance with the License. 
# You may obtain a copy of the License at 

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software 
# distributed under the License is distributed on an "AS IS" BASIS, 
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
# See the License for the specific language governing permissions and 
# limitations under the License. 

"""
日志工具模块 - 支持多进程环境下的任务标识日志输出
"""

import threading
from datetime import datetime

# 使用线程本地存储来保存当前任务上下文
_task_context = threading.local()


def set_task_context(task_name: str):
    """
    设置当前进程/线程的任务上下文
    
    Args:
        task_name: 任务名称，例如 "owner/repo_123"
    """
    _task_context.task_name = task_name


def get_task_context() -> str:
    """
    获取当前进程/线程的任务名称
    
    Returns:
        任务名称，如果未设置则返回 "unknown"
    """
    return getattr(_task_context, 'task_name', 'unknown')


def clear_task_context():
    """清除当前进程/线程的任务上下文"""
    if hasattr(_task_context, 'task_name'):
        delattr(_task_context, 'task_name')


def get_log_prefix() -> str:
    """
    获取日志前缀，包含时间戳和任务名
    
    Returns:
        格式化的日志前缀，例如 "[2026-01-30 10:30:45][owner/repo_123]"
    """
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    task_name = get_task_context()
    return f"[{timestamp}][{task_name}]"


def log(message: str, *args, **kwargs):
    """
    带任务前缀的日志输出
    
    Args:
        message: 日志消息
        *args, **kwargs: 传递给 print 的其他参数
    """
    prefix = get_log_prefix()
    # 处理多行消息，每行都加前缀
    lines = str(message).split('\n')
    if len(lines) == 1:
        print(f"{prefix} {message}", *args, **kwargs)
    else:
        # 只在第一行加前缀，后续行缩进对齐
        print(f"{prefix} {lines[0]}", *args, **kwargs)
        indent = " " * (len(prefix) + 1)
        for line in lines[1:]:
            print(f"{indent}{line}", *args, **kwargs)


def log_debug(message: str):
    """调试日志"""
    log(f"[DEBUG] {message}")


def log_info(message: str):
    """信息日志"""
    log(f"[INFO] {message}")


def log_warning(message: str):
    """警告日志"""
    log(f"[WARN] {message}")


def log_error(message: str):
    """错误日志"""
    log(f"[ERROR] {message}")
