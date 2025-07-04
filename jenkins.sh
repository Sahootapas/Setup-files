#!/bin/bash
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
# Add required dependencies for the jenkins package
sudo yum install java-17 -y
sudo yum install jenkins  -y
sudo systemctl daemon-reload
sudo systemctl  enable --now   jenkins.service
lsof -i -n -P | grep 8080
