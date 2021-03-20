# anbo-free
for free

# docker
``` bash
# https://docs.docker.com/engine/install/ubuntu/
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose
sudo docker run hello-world
```

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
