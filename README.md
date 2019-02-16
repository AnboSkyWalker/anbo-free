# anbo-free
for free

# socks2http
``` bash
# https://github.com/shadowsocks/shadowsocks/wiki/Convert-Shadowsocks-into-an-HTTP-proxy
sudo apt-get install polipo
sudo service polipo stop
# 临时起服务
sudo polipo socksParentProxy=localhost:1080
＃　持久化
sudo vi /etc/polipo/config
# 添加如下配置
logSyslog = true
logFile = /var/log/polipo/polipo.log

allowedClients = 127.0.0.1
proxyAddress = "127.0.0.1"
proxyName = "anbo_polipo2v2ray"

socksParentProxy = "localhost:1080"
socksProxyType = socks5

#　然后启动服务
sudo service polipo restart

#　然后改.bashrc polipo默认端口是８１２３
export http_proxy=http://127.0.0.1:8123
export https_proxy=http://127.0.0.1:8123
```
