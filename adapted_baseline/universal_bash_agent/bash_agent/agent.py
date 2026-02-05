"""Agent 实现 - 使用 LangGraph 的 ReAct Agent"""

import logging
from typing import List, Optional
from langchain_core.language_models import BaseChatModel
from langchain_core.tools import StructuredTool
from langchain_core.messages import SystemMessage, AIMessage, ToolMessage
from langgraph.prebuilt import create_react_agent
from pydantic import Field

from .executor import DockerBashExecutor
from .prompts import get_system_prompt

logger = logging.getLogger(__name__)


class SetupAgent:
    """环境配置 Agent"""
    
    def __init__(
        self,
        model: BaseChatModel,
        executor: DockerBashExecutor,
        max_iterations: int = 50,
        logger: Optional[logging.Logger] = None,
    ):
        self.model = model
        self.executor = executor
        self.max_iterations = max_iterations
        self.logger = logger or logging.getLogger(__name__)
    
    @property
    def commands_history(self):
        return self.executor.commands_history
    
    def _create_bash_tool(self) -> StructuredTool:
        """创建 bash 执行工具"""
        async def execute_bash_command(
            command: str = Field(description="The bash command to execute"),
            reason: str = Field(description="Why you are running this command"),
        ) -> str:
            """Execute a bash command in the Docker container."""
            output, exit_code = await self.executor.execute(command)
            if exit_code != 0:
                return f"[Exit code: {exit_code}]\n{output}"
            return output
        
        return StructuredTool.from_function(coroutine=execute_bash_command)
    
    def get_graph(self):
        """构建 LangGraph agent"""
        tools = [self._create_bash_tool()]
        system_message = SystemMessage(content=get_system_prompt())
        return create_react_agent(
            model=self.model,
            tools=tools,
            prompt=system_message,
        )
    
    async def run(self) -> List[dict]:
        """运行 agent"""
        from langgraph.errors import GraphRecursionError
        
        graph = self.get_graph()
        trajectory = []
        iteration = 0
        
        try:
            async for update in graph.astream(
                {},
                {"recursion_limit": self.max_iterations * 2 + 1},
                stream_mode="updates",
            ):
                trajectory.append(update)
                iteration += 1
                self._log_update(iteration, update)
        except GraphRecursionError:
            self.logger.warning("Agent reached max recursion limit")
        
        return trajectory
    
    def _log_update(self, iteration: int, update: dict):
        """记录 agent 的每次更新"""
        for node_name, node_output in update.items():
            messages = node_output.get("messages", [])
            for message in messages:
                if isinstance(message, AIMessage):
                    # 记录 AI 的思考和工具调用
                    if message.content:
                        self.logger.info(f"\n{'='*60}")
                        self.logger.info(f"[Iteration {iteration}] Agent Thinking:")
                        self.logger.info(f"{message.content}")
                    
                    if message.tool_calls:
                        for tool_call in message.tool_calls:
                            tool_name = tool_call.get("name", "unknown")
                            tool_args = tool_call.get("args", {})
                            reason = tool_args.get("reason", "")
                            command = tool_args.get("command", "")
                            
                            self.logger.info(f"\n{'='*60}")
                            self.logger.info(f"[Iteration {iteration}] Tool Call: {tool_name}")
                            if reason:
                                self.logger.info(f"Reason: {reason}")
                            if command:
                                self.logger.info(f"Command: $ {command}")
                
                elif isinstance(message, ToolMessage):
                    # 记录工具执行结果
                    content = message.content
                    # 截断过长的输出
                    max_display_len = 2000
                    if len(content) > max_display_len:
                        content = content[:max_display_len] + f"\n... [truncated, total {len(message.content)} chars]"
                    
                    self.logger.info(f"\n{'-'*60}")
                    self.logger.info(f"[Iteration {iteration}] Tool Output:")
                    self.logger.info(f"{content}")
