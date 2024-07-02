#!/bin/bash

pid=$(ps -aux | grep -v grep | grep -m 1 'aleo-pool-prove' | awk '{print $2}')

if [ -n "$pid" ]; then
    echo "aleo-pool-prove 运行中，进程ID为 $pid"
else
    echo "未在运行"
fi
