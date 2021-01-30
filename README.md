
## 为方便国内用户提供国内安装地址

## 一键脚本(先运行脚本,在自行修改 frps.ini 文件.)
```
wget https://files.zozs.cn/frps/frps_linux_install.sh && chmod +x frps_linux_install.sh && ./frps_linux_install.sh
```
## 卸载

```
wget https://files.zozs.cn/frps/frps_linux_uninstall.sh && chmod +x frps_linux_uninstall.sh && ./frps_linux_uninstall.sh
```

## frps相关命令

```
sudo systemctl start frps
# 启动服务 
sudo systemctl enable frps
# 开机自启
sudo systemctl status frps
# 状态查询
sudo systemctl restart frps
# 重启服务
sudo systemctl stop frps
# 停止服务
```

