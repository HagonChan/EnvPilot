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


from openai import OpenAI
from dotenv import load_dotenv
import time
import os
import threading
from utils.logger import log_debug, log_error

# 加载 .env 文件
load_dotenv()

# 使用线程本地存储来为每个进程/线程创建独立的客户端
# 这避免了在多进程环境下共享 HTTP 连接池导致的问题
_thread_local = threading.local()

def _get_client():
    """获取当前进程/线程的 OpenAI 客户端（懒加载）"""
    if not hasattr(_thread_local, 'client'):
        api_key = os.environ.get("OPENAI_API_KEY")
        base_url = os.environ.get("OPENAI_BASE_URL")
        _thread_local.client = OpenAI(
            api_key=api_key,
            base_url=base_url
        )
    return _thread_local.client

def get_llm_response(model: str, messages, temperature = 0.0, n = 1, max_tokens = 1024):
    max_retry = 5
    count = 0
    # 添加调试信息
    log_debug(f"发送到API的模型名称: {model}")
    
    # 获取当前进程/线程的客户端
    client = _get_client()
    
    while count < max_retry:
        try:
            response = client.chat.completions.create(
                model=model,
                messages=messages,
                temperature=temperature,
                n=n,
                max_tokens=max_tokens
            )
            # 打印实际使用的模型（从响应中获取）
            if hasattr(response, 'model'):
                log_debug(f"API返回的模型名称: {response.model}")
            return response.choices[0].message.content, response.usage
        except Exception as e:
            log_error(f"LLM请求失败: {e}")
            count += 1
            time.sleep(3)
    return None, None