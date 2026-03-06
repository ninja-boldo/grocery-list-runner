ls
free -h
ls
git clone https://github.com/ninja-boldo/grocery-list-runner.git
sudo apt install git
git clone https://github.com/ninja-boldo/grocery-list-runner.git
ls
cp . grocery-list-runner/* 
cp -r . grocery-list-runner/* 
cp -r grocery-list-runner/* .
ls
rm -rf grocery-list-runner/
ls
ls -lh
rm -rf *
ls
clear
git clone https://github.com/ninja-boldo/grocery-list-runner.git
cp -r grocery-list-runner/* .
rm -rf grocery-list-runner/
ls
ls
rm fresh-editor.deb 
ls
df -h
docker compose up -d
sudo apt install docker
docker compose up -d
sudo apt install docker.io
docker compose up -d
sudo apt install docker-compose-plugin
docker-compose up -d
sudo apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo apt remove docker.io
docker compose up -d
nano .env
docker compose up -d
nano .env
docker compose up -d
docker login
docker compose up -d
htop
sudo apt install htop
htop
sudo swapoff -a
# Create an empty swapfile
# Note that "1M" is basically just the unit and count is an integer.
# Together, they define the size. In this case 8GiB.
sudo dd if=/dev/zero of=/swapfile bs=1M count=1024
# Set the correct permissions
sudo chmod 0600 /swapfile
sudo mkswap /swapfile  # Set up a Linux swap area
sudo swapon /swapfile  # Turn the swap on
free -h
du -sh
df -sh
df -h
htop
sudo apt install btop
sudo apt install snapd
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/local/bin/certbot
sudo certbot --nginx
sudo certbot certonly --nginx
ls
sudo certbot renew --dry-run
cat /var/log/letsencrypt/letsencrypt.log
cat compose.yaml 
cat nginx.conf 
sudo apt install fresh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
nano nginx.conf 
nano compose.yaml 
nano compose.yaml 
docker compose down -v
docker compose up -d
docker logs -f grocery-app 
docker logs -f nginx 
cat nginx.conf 
cat compose.yaml 
rm nginx.conf 
nano nginx.conf
docker compose down -v
docker compose up -d
docker logs -f
docker logs -f nginx 
cat compose.yaml 
ls /etc/letsencrypt/
ls /etc/letsencrypt/renewal-hooks/
cat nginx.conf 
sudo certbot certonly --nginx
sudo certbot certonly --nginx -v
cat /var/log/letsencrypt/letsencrypt.log
docker logs -f certbot 
nano compose.yaml 
docker compose down -v
docker compose up -d
docker logs -f certbot 
nano compose.yaml 
docker compose down -v
docker compose up -d
docker logs -f certbot/
docker ps
sudo ss -lntp | grep :80
docker logs -f nginx 
nano com
rm com
ls
nano compose.yaml 
docker-compose run --rm certbot certonly   --webroot -w /var/www/certbot   -d boldo.ddns.net   --email you@example.com   --agree-tos   --no-eff-email
docker compose run --rm certbot certonly   --webroot -w /var/www/certbot   -d boldo.ddns.net   --email you@example.com   --agree-tos   --no-eff-email
clear
cat compose.yaml 
cat nginx.conf 
docker logs -f nginx 
clear
nano compose.yaml 
nano nginx-entrypoint.sh
nano certbot-entrypoint.sh
rm compose.yaml 
nano compose.yaml
chmod +x nginx-entrypoint.sh certbot-entrypoint.sh 
docker compose down -v
docker compose up -d
nano compose.yaml
nano certbot-entrypoint.sh 
docker compose down -v
docker compose up -d
ls /etc/letsencrypt/
cat nginx
cat nginx.conf 
cat compose.yaml 
clear
cat certbot-entrypoint.sh 
rm /etc/letsencrypt/live/boldo.ddns.net/fullchain.pem
ls /etc/letsencrypt/live/
ls /etc/letsencrypt/live
docker exec -it nginx /bin/bash
docker ps
docker logs nginx 
docker exec -it nginx /bin/bash
docker exec -it nginx 
ls
docker exec -it nginx /bin/sh
ls /etc/letsencrypt/
cd /etc/letsencrypt/
ls
cd /
ls etc/
rm -rf etc/letsencrypt/
cd root/
ls
docker compose down -v
docker compose up -d
docker logs -f certbot 
docker logs -f nginx 
cat compose.yaml 
rm -rf /etc/letsencrypt
rm -rf /var/www/certbot:ro
docker compose down -v
docker compose up -d
cat compose.yaml 
cat nginx
cat nginx.conf 
cat certbot
cat certbot-entrypoint.sh 
cat nginx-entrypoint.sh 
ls /
# 1. Delete the correct certificate directory
rm -rf ./data
# 2. Also clean up the certbot challenge directory
rm -rf ./certbot/www/.well-known
# 3. Stop all containers
docker compose down
# 4. Fix your compose.yaml - remove the duplicate mount
# The nginx volumes section should be:
# 1. Delete the correct certificate directory
rm -rf ./data
# 2. Also clean up the certbot challenge directory
rm -rf ./certbot/www/.well-known
nano compose.yaml 
docker compose down -v
docker compose up -d
docker logs -f certbot 
docker logs grocery-app 
docker logs nginx 
clear
docker ps
docker logs -f grocery-app 
ls
btop
ls
./restart.sh 
docker compose restart
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
docker restart nginx 
ls
htop
docker stats
clear
ls
./restart.sh 
docker exec -it postgres-db /bin/bash
docker restart nginx 
docker restart nginx 
docker restart nginx
docker restart nginx
docker restart nginx
docker restart nginx
docker restart nginx
docker restart nginx
docker restart nginx
docker restart nginx
./restart.sh 
docker logs grocery-app 
./restart.sh 
docker logs grocery-app 
sleep 250 && ./restart.sh 
./restart.sh 
docker logs grocery-app 
docker logs grocery-app 
ls
ls -lh
cat maindb.sql 
./restart.sh 
docker restart nginx
docker restart nginx
docker restart nginx
cat nginx
cat nginx.conf
rm -rf nginx.conf
nano nginx.conf
docker restart nginx 
docker restart nginx
docker restart nginx
cat nginx
cat nginx.conf 
free -h
top
docker -it nginx -t
docker -it nginx /bin/bash 
nginx -t
docker logs nginx 
clear
# Check what Docker containers are running and their memory usage
docker stats --no-stream
rm nginx.conf
nano nginx.conf
docker restart nginx
cat nginx.conf
./restart.sh 
./restart.sh 
docker restart nginx 
./restart.sh
docker logs grocery-app 
./restart.sh
docker logs grocery-app 
docker image ls
docker ps
clear
