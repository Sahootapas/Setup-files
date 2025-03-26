sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
ls /usr/local/bin/
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod a+x /usr/local/bin/docker-compose
docker-compose version
echo ================*****============
sleep 2
echo "Docker compose set-up Done!!!"
echo ================Done============
