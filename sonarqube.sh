#!/bin/bash
#setup for aws linux
sudo yum update -y
sudo yum install java-17 -y
cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.0.65466.zip
sudo unzip  sonarqube-9.9.0.65466.zip 
sudo useradd sonar
sudo echo redhat | passwd --stdin sonar
sudo mv /opt/sonarqube-9.9.0.65466    sonarqube
sudo chown  sonar:sonar  /opt/sonarqube  -R
sudo usermod  -d /opt/sonarqube  sonar

#switch to the sonar user 
# su - sonar
# cd bin/linux-x86-64
#sh sonar.sh  start 
#sh sonar.sh status 
