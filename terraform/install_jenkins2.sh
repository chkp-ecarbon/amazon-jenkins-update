#!/bin/bash

sudo apt-get update -y

echo "Install Java JDK 8"
sudo apt remove -y java
sudo apt-get install open jdk-8-jdk

echo "Install Maven"
sudo apt-get intall -y maven

echo " Install git"
sudo apt-get install -y git

echo "Install sysv-rc-conf"
sudo apt-get install  -y sysv-rc-conf

echo "Install Docker Engine"

sudo apt-get update -y

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo docker run hello-world

sudo apt install -y docker
sudo groupadd docker
sudo usermod -a -G docker jenkins
sudo service docker start
sudo sysv-rc-conf chkconfig docker on

echo "Install Jenkins"

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
sudo usermod -a -G docker jenkins
sudo sysv-rc-conf jenkins on
sudo service docker start
sudo service jenkins start

Install Terraform ubuntu
curl -O https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip in /usr/bin



