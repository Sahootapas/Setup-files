#!/bin/bash
#install required pkgs for  deploy the webapp
for pkg in 'git' 'maven' 'java-1.8.0' 'curl'
do
        yum install $pkg -y
done
# copy the raw code from git hub to local
git clone https://github.com/Sahootapas/Maven-Project.git
# switch to Maven dir
cd ./Maven-Project
#to build the artifact
mvn clean package
cd ..
#to do the tomcat setup
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.106/bin/apache-tomcat-9.0.106.tar.gz
# to extract the file
tar -xvf  ./apache-tomcat-9.0.106.tar.gz
mv  ./apache-tomcat-9.0.106 /opt/tomcat
#copy the artifact to  tomcat  webapps dir
cp /root/Maven-Project/target/maven-web-app.war  /opt/tomcat/webapps
sh /opt/tomcat/bin/startup.sh
rm -rvf /root/Maven-Project
echo =========================================
echo web application got  deployed
echo =========================================
