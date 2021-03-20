#!/bin/bash

function set_timezone()
{
    #echo "select timezone: 4/9/1/1  Asia/Shanghai"
    #tzselect
    #echo "TZ='Asia/Shanghai'; export TZ" >> /root/.profile
    #echo "TZ='Asia/Shanghai'; export TZ" >> /home/ubuntu/.profile
    timedatectl set-timezone Asia/Shanghai
    timedatectl
}

function install_docker()
{
    apt-get update
    apt-get upgrade -y
    apt-get remove docker docker-engine docker.io containerd runc
    apt-get install -y \
	apt-transport-https \
        ca-certificates \
        curl \
        gnupg
    [[ -f /usr/share/keyrings/docker-archive-keyring.gpg ]] && rm -rf /usr/share/keyrings/docker-archive-keyring.gpg
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
	"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt-get update    
    apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose
    docker run -ti --rm hello-world
}

set_timezone
install_docker
