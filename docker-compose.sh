curl -L https://github.com/docker/compose/releases/download/v2.34.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
ls /usr/local/bin/
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo chmod a+x /usr/local/bin/docker-compose
docker-compose version
echo ================*****============
sleep 2
echo "Docker compose set-up Done!!!"
echo ================Done============
