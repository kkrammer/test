#!/bin/bash
sudo yum -y install java-1.8.0-openjdk
sudo yum install -y java-1.8.0-openjdk-devel
sudo yum install -y git
sudo yum install -y yum-utils   device-mapper-persistent-data   lvm2
sudo yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo yum install -y maven
sudo systemctl enable docker
sudo systemctl start docker
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
sudo systemctl start jenkins
sudo usermod -aG docker jenkins
sudo reboot