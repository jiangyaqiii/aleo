ps -aux | grep -v grep | grep -m 1 'aleo-pool-prover' | awk '{print $2}'
