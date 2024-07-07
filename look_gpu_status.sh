#!/bin/bash

pid=$(ps -aux | grep -v grep | grep -m 1 'aleo-miner' | awk '{print $2}')

if [ -n "$pid" ]; then
    echo "aleo-miner 运行中，进程ID为 $pid"
else
    echo 停止"
fi
