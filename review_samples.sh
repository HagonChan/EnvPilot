#!/bin/bash

# 基础目录
BASE_DIR="/home/hagon/Project/EnvPilot/trajectories_PrepareScript/deepseek-v3_baseline"
REPORT_FILE="${BASE_DIR}/llm_judge/report.json"

# 检查 jq 是否安装
if ! command -v jq &> /dev/null; then
    echo "错误: 未安装 'jq'。"
    exit 1
fi

# 逻辑判断：根据参数决定 SAMPLES 列表
if [ -z "$1" ]; then
    # 场景 1: 无参数 -> 查看所有样本 (passed + failed)
    echo "提示: 未指定分类，将显示 report.json 中的所有样本..."
    SAMPLES=$(jq -r '.passed[], .failed[]' "$REPORT_FILE" 2>/dev/null)
elif [ "$1" == "passed" ]; then
    # 场景 2: 指定查看 passed
    SAMPLES=$(jq -r '.passed[]' "$REPORT_FILE" 2>/dev/null)
elif [ "$1" == "failed" ]; then
    # 场景 3: 指定查看 failed
    SAMPLES=$(jq -r '.failed[]' "$REPORT_FILE" 2>/dev/null)
else
    # 场景 4: 视为特定样本 ID
    SAMPLES="$1"
fi

# 如果还是没找到样本，尝试直接列出目录（兜底方案）
if [ -z "$SAMPLES" ]; then
    echo "警告: 未在 report.json 中找到对应内容，尝试匹配目录名..."
    SAMPLES=$(find "$BASE_DIR" -maxdepth 1 -type d -not -path "$BASE_DIR" -not -name "llm_judge" -exec basename {} \;)
fi

# 统计总数
TOTAL=$(echo "$SAMPLES" | wc -l)
COUNT=0

for INS in $SAMPLES; do
    # 排除空行
    [ -z "$INS" ] && continue
    
    COUNT=$((COUNT + 1))
    
    # 文件路径
    PREPARE_FILE="${BASE_DIR}/${INS}/prepare.sh"
    LLM_JUDGE_FILE="${BASE_DIR}/llm_judge/${INS}.txt"
    TRAJ_FILE="${BASE_DIR}/${INS}/${INS}.traj"

    clear
    echo "================================================================================"
    echo " 样本 [$COUNT / $TOTAL]: $INS"
    echo "================================================================================"

    # 1. 显示 LLM Judge 结果
    echo -e "\033[1;32m>>> LLM Judge 结果:\033[0m"
    if [ -f "$LLM_JUDGE_FILE" ]; then
        cat "$LLM_JUDGE_FILE"
    else
        echo "文件不存在: $LLM_JUDGE_FILE"
    fi
    echo ""

    # 2. 显示 prepare.sh 内容
    echo -e "\033[1;34m>>> prepare.sh 内容:\033[0m"
    if [ -f "$PREPARE_FILE" ]; then
        cat "$PREPARE_FILE"
    else
        echo "文件不存在: $PREPARE_FILE"
    fi
    echo ""

    # 3. 显示轨迹中的最后 10 个步骤
    echo -e "\033[1;33m>>> 轨迹最后 10 个步骤:\033[0m"
    if [ -f "$TRAJ_FILE" ]; then
        jq '.history[-10:]' "$TRAJ_FILE"
    else
        echo "文件不存在: $TRAJ_FILE"
    fi
    echo ""

    echo "================================================================================"
    echo " 样本 [$COUNT / $TOTAL]: $INS"
    echo "================================================================================"
    echo -e "按 \033[1;31m[Enter]\033[0m 查看下一个样本，或按 \033[1;31mCtrl+C\033[0m 退出..."
    read -r
done

echo "查看结束。"
