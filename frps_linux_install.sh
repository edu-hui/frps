#!/bin/sh
FRP_VERSION="0.34.2"
WORK_PATH=$(dirname $(readlink -f $0))

# 创建frp文件夹
mkdir -p /usr/local/frp && \
# 下载并移动frps文件
wget -P ${WORK_PATH} https://files.zozs.cn/frps/frp_${FRP_VERSION}_linux_amd64.tar.gz && \
tar -zxvf frp_${FRP_VERSION}_linux_amd64.tar.gz && \
cd frp_${FRP_VERSION}_linux_amd64 && \
mv frps /usr/local/frp && \
# 下载frps.in和frps.service
wget -P /usr/local/frp https://files.zozs.cn/frps/frps.ini && \
wget -P /lib/systemd/system https://files.zozs.cn/frps/frps.service && \
systemctl daemon-reload && \
# 启动frps
sudo systemctl start frps && \
sudo systemctl enable frps && \
# 删除多余文件
cd ${WORK_PATH} && \
rm -rf frp_${FRP_VERSION}_linux_amd64 frp_${FRP_VERSION}_linux_amd64.tar.gz frps_linux_install.sh
echo "=======================================================" &&\
echo -e "\033[32m安装成功,请先修改 frps.ini 文件,确保格式及配置正确无误!\033[0m" && \
echo -e "\033[31mvi /usr/local/frp/frps.ini \033[0m" && \
echo -e "\033[32m修改完毕后执行以下命令重启服务:\033[0m" && \
echo -e "\033[31msudo systemctl restart frps\033[0m" && \
echo -e "\033[32m版权归属，青阳のblog\033[0m" && \
echo "======================================================="