if [ ! -f "aleo-pool-prove" ]; then
    echo "aleo-pool-prove 文件不存在"
    echo "开始下载并设置aleo-pool-prove..."

    wget -O aleo-pool-prove https://github.com/zkrush/aleo-pool-client/releases/download/v1.6-testnet-beta/aleo-pool-prover && chmod +x aleo-pool-prove

    if [ $? -eq 0 ]; then
        chmod +x aleo-pool-prove
        echo "aleo-pool-prove 下载并设置成功"
    else
        echo "下载或设置aleo-pool-prove时出现错误"
    fi
else
    echo "aleo-pool-prove 文件已经存在,删除原版本，下载新版本"
    rm -rf aleo-pool-prove
    wget -O aleo-pool-prove https://github.com/zkrush/aleo-pool-client/releases/download/v1.6-testnet-beta/aleo-pool-prover && chmod +x aleo-pool-prove
    if [ $? -eq 0 ]; then
        chmod +x aleo-pool-prove
        echo "aleo-pool-prove 下载并设置成功"
    else
        echo "下载或设置aleo-pool-prove时出现错误"
    fi
fi
nohup ./aleo-pool-prover --pool wss://aleo.zkrush.com:3333 --account $accountname --worker-name $mechaname > prover.log 2>&1 &
