#!/bin/bash


function docker()
{
    apt-get update
    apt-get remove docker docker-engine docker.io containerd runc
    apt-get install -y \
	apt-transport-https \
        ca-certificates \
        curl \
        gnupg
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    echo \
	"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
    apt-get update    
    apt-get install docker-ce docker-ce-cli containerd.io
    docker run -ti --rm hello-world
}

docker
