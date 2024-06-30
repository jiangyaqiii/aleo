function install_pm2() {
    if command -v pm2 > /dev/null 2>&1; then
        echo "PM2 已安装"
    else
        echo "PM2 未安装，正在安装..."
        npm install pm2@latest -g
    fi
}
echo '正在按照pm2'
install_pm2
echo '正在下载aleo-pool-prover客户端'
wget -O aleo-pool-prover https://github.com/zkrush/aleo-pool-client/releases/download/v1.5-testnet-beta/aleo-pool-prover && chmod +x aleo-pool-prover
pm2 start ./aleo-pool-prover --name "aleo-pool-prover" -- --pool wss://aleo.zkrush.com:3333 --account accountname --worker-name mechaname
