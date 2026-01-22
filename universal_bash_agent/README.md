# Universal bash Setup Agent

基于Bash使用 LLM 自动配置任意项目开发环境的 Agent。

## 安装

```bash
pip install -e .
```

## 使用

```bash
# 配置 .env 文件
OPENAI_API_KEY=your-key
OPENAI_BASE_URL=https://api.openai.com/v1  # 可选
MODEL_NAME=gpt-4o-mini

# 运行（单任务）
setup-agent input.jsonl --output ./output

# 并发执行 2 个任务
setup-agent input.jsonl --output ./output --concurrency 2
```

### 输入格式 (JSONL)

```jsonl
{"org": "fluent", "repo": "fluent-bit", "number": 3663, "commit": "b0f0b290375ecac2e3b1979ffb4b42331d58367a"}
{"org": "fluent", "repo": "fluent-bit", "number": 10007, "commit": "9f2502b99db98e26efe9ac27bb0cf43a453f108b"}
{"org": "libsdl-org", "repo": "SDL", "number": 11946, "commit": "f731741eadbe06d618d6a9bbdb41c2ee98b8178d"}
{"org": "mruby", "repo": "mruby", "number": 3649, "commit": "ef305305b43528d94b162078c421a0590ba1c438"}
{"org": "mruby", "repo": "mruby", "number": 6442, "commit": "4a99f28ec37152babd82328b1441b5cca6a311d5"}

```

## 输出

- `output/results.jsonl` - 执行结果摘要
- `output/{org}__{repo}@{number}/setup.log` - 命令执行日志
- `output/{org}__{repo}@{number}/agent.log` - Agent 运行日志

## 依赖

- Python >= 3.10
- Docker
