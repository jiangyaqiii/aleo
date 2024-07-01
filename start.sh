wget -O aleo-pool-prover https://github.com/zkrush/aleo-pool-client/releases/download/v1.5-testnet-beta/aleo-pool-prover && chmod +x aleo-pool-prover
nohup ./aleo-pool-prover --pool wss://aleo.zkrush.com:3333 --account $accountname --worker-name $mechaname > prover.log 2>&1 &
