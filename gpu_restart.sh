# pid ps -aux | grep -v grep | grep -m 1 'aleo-pool-prover' | awk '{print $2}'
pkill -f aleo-miner
nohup ./aleo-miner -u stratum+ssl://nlb-gnbhhkqxxdgt9wc6ou.cn-chengdu.nlb.aliyuncs.com:4420 -w $accountname.$mechaname -d 0 >> ./aleo-miner.log 2>&1 &
# rm -f gpu_restart.sh
