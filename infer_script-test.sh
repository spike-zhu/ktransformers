#!/bin/bash

LOG_FILE="ktransformer_deepseek-test.log"

# 实时输出并记录日志
python -m ktransformers.local_chat \
    --model_path /home/wanghaojie/zhushuang/ktransformer-deepseek-v2.5/models/deepseek-v2.5 \
    --gguf_path /home/wanghaojie/zhushuang/ktransformer-deepseek-v2.5/models/deepseek-v2.5-gguf \
    2>&1 | tee "$LOG_FILE"

echo "日志已实时保存到: $LOG_FILE"