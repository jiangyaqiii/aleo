# aleo

# 启动

 export accountname=xxx 账户名称
 
 export mechaname=xxx 机器名称

 wget -O start.sh https://raw.githubusercontent.com/jiangyaqiii/aleo/web/start.sh && chmod +x start.sh && ./start.sh
 
# 查看状态
wget -O look_status.sh https://raw.githubusercontent.com/jiangyaqiii/aleo/web/look_status.sh && chmod +x look_status.sh && ./look_status.sh

# 重启
wget -O restart.sh https://raw.githubusercontent.com/jiangyaqiii/aleo/web/restart.sh && chmod +x restart.sh && ./restart.sh

# 显卡重启
wget -O gpu_restart.sh https://raw.githubusercontent.com/jiangyaqiii/aleo/web/gpu_restart.sh && sh restart.sh

# 查看显卡状态
wget -O look_gpu_status.sh https://raw.githubusercontent.com/jiangyaqiii/aleo/web/look_gpu_status.sh && chmod +x look_gpu_status.sh && sh look_gpu_status.sh
