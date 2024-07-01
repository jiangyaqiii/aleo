# pid ps -aux | grep -v grep | grep -m 1 'aleo-pool-prover' | awk '{print $2}'
pkill -f aleo-pool-prover
nohup ./aleo-pool-prover --pool wss://aleo.zkrush.com:3333 --account $accountname --worker-name $mechaname > prover.log 2>&1 &
