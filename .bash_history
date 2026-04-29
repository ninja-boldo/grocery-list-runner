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
nano compose.yaml 
sudo rm /etc/apt/sources.list.d/docker.list
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
mv grocery-list-runner/* . && mv grocery-list-runner/.* . 2>/dev/null; rm -rf grocery-list-runner
ls
clear
docker --v
sudo swapoff /swapfile
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo apt install htop
htop
htop
docker compose up -d
cat .env
nano .env
docker compose up -d
clear
rm compose.yaml 
nano compose.yaml
docker compose up -d
docker logs -f grocery-app 
docker compose down
docker compose up -d
docker logs -f grocery-app 
htop
docker stats
clear
 docker logs -f grocery-app 
./restart.sh 
docker logs -f grocery-app 
docker exec -it grocery-app /bin/bash
./restart.sh 
docker logs -f grocery-app 
docker exec -it grocery-app /bin/bash
./restart.sh 
docker logs -f grocery-app 
docker exec -it grocery-app /bin/bash
./restart.sh 
docker exec -it grocery-app /bin/bash
cat compose.yaml 
docker exec -it grocery-app /bin/bash
nano compose.yaml 
docker compose restart
docker compose down -v
docker compose up -d
docker logs -f grocery-app 
docker exec -it grocery-app /bin/bash
nano compose.yaml 
docker compose down -v
docker compose up -d
docker exec -it grocery-app /bin/bash
./restart.sh 
docker logs -f grocery-app 
docker exec -it grocery-app /bin/bash
./restart.sh 
docker logs -f grocery-app 
docker exec -it postgres-db /bin/bash
docker logs -f grocery-app 
docker logs -f grocery-app 
docker exec -it grocery-app /bin/bash
clear
docker restart nginx
docker restart nginx
cat compose.yaml 
nano compose.yaml 
clear
ls
clear
ls
cat compose.yaml.save 
clear
cat compose.yaml
clear
ls
ls data/
cat compose.yaml
cp compose.yaml
cp compose.yaml saved.yaml
ls
rm compose.yaml
mv compose.yaml.save compose.yaml
ls
clear
cat compose.yaml 
clear
nano compose.yaml 
docker exec -it postgres-db /bin/bash
ls 
ls models/
mkdir scripts
mv nginx
mv nginx-entrypoint.sh scripts/nginx-entrypoint.sh
ls
nano scripts/ollama-entrypoint.sh
free -h
dui -sh
du -sh
df -h
htop
cat scripts/nginx-entrypoint.sh 
cat scripts/ollama-entrypoint.sh 
cat .env
docker compose down
docker compose up -d
docker logs -f ollama
docker ps
docker logs -f root-ollama-1
clear
nano compose.yaml 
ls
nano compose.yaml 
ls scripts/
ls       | grep ".sh"
ls scripts/
rm nginx-entrypoint.sh/
cat scripts/ollama-entrypoint.sh 
cat scripts/certbot-entrypoint.sh 
clear
docker compose down -v
cd models/
rm class_mapper.Modelfile 
nano class_mapper.Modelfile
nano wish_mapper.Modelfile 
rm wish_mapper.Modelfile 
nano wish_mapper.Modelfile 
cd ..
./restart.sh 
docker logs -f ollama 
cd scripts/
pwd
nano co
rm co
cd ..
nano compose.yaml 
docker compose restart -v
docker compose restart 
docker logs -f ollama 
docker compose down -v
docker compose up -d
docker logs -f ollama 
tree
sudo apt install tree
clear
docker logs ollama 
pwd
tree
cat compose.yaml 
nano compose.yaml 
rm compose.yaml 
nano compose.yaml 
./restart.sh 
docker logs -f ollama
nano scripts/ollama-entrypoint.sh 
clear
./restart.sh 
docker logs -f ollama
docker logs -f grocery-app 
nano compose.yaml 
./restart.sh 
docker logs -f ollama 
docker logs -f grocery-app 
docker ps
docker networks
docker network ls
cat env
cat .env
./restart.sh 
docker logs -f ollama 
docker logs -f grocery-app 
nano scripts/ollama-entrypoint.sh 
docker logs -f ollama 
nano scripts/ollama-entrypoint.sh 
./restart.sh 
docker logs -f ollama 
docker logs -f grocery-app 
cat scripts/ollama-entrypoint.sh 
ls models/
cat models/class_mapper.Modelfile 
cat models/wish_mapper.Modelfile 
# Fix wish_mapper.Modelfile to use correct GGUF and absolute path
sed -i 's|FROM LFM2.5-1.2B-Instruct-q4-class-mapping.gguf|FROM /app/other/models/LFM2.5-1.2B-Instruct-q4-wish-mapping.gguf|' models/wish_mapper.Modelfile
# Fix class_mapper.Modelfile to use absolute path
sed -i 's|FROM LFM2.5-1.2B-Instruct-q4-class-mapping.gguf|FROM /app/other/models/LFM2.5-1.2B-Instruct-q4-class-mapping.gguf|' models/class_mapper.Modelfile
cat > scripts/ollama-entrypoint.sh << 'EOF'
#!/bin/sh

echo "starting ollama server..."
ollama serve &

echo "waiting for ollama to be ready..."
until ollama list > /dev/null 2>&1; do
  sleep 1
done

echo "creating models..."
ollama create wish-mapper -f /app/other/models/wish_mapper.Modelfile
ollama create class-mapper -f /app/other/models/class_mapper.Modelfile

echo "models ready"
wait
EOF

./restart.sh 
docker logs -f ollama 
docker logs -f grocery-app 
docker logs -f ollama 
docker logs -f grocery-app 
docker logs -f ollama 
docker logs -f grocery-app 
docker logs -f grocery-app 
docker logs -f ollama 
htop
nano compose.yaml 
./restart.sh 
docker exec -it postgres-db /bin/bash
clear
docker logs -f grocery-app 
clear
docker exec -it postgres-db /bin/bash
ls
docker ps
clear
ls
htop
./restart.sh 
docker exec -it postgres-db /bin/bash
docker logs -f grocery-app 
ls
docker stats
docker stats
docker stats
./restart.sh 
./restart.sh 
docker logs -f grocery-app 
docker logs -f nginx 
./restart.sh 
docker logs -f grocery-app 
./restart.sh 
docker logs -f grocery-app 
git remote -v
git push origin
git push origin
git push origin
nano .gitignore 
git add --all
nano .gitignore
git add --all
git commit -m "added ollama and its startup scripts + model integration"
git push origin
clear
mkdir test
cd test
git clone https://github.com/ninja-boldo/grocery-list-vite.git
ls
ls
 ls grocery-list-vite/
cd grocery-list-vite/
pip install -r requirements.txt 
pip3 install -r requirements.txt 
pip --version
pip3 --version
python --version
python3 --version
apt update
apt install python3-pip -y
python --version
pip --version
pip install -r requirements.txt 
pip install uv --break-system-packages
uv pip install -r requirements.txt --system
uv init
uv pip install -r requirements.txt 
uv venv
uv pip install -r requirements.txt 
python server/server.py 
python3 server/server.py 
uv pip install httpx
python3 server/server.py 
uv run python server/server.py 
nano .env
uv run python server/server.py 
clear
docker restart nginx 
cat .env
htop
docker logs -f grocery-app 
ls
git clone https://github.com/ninja-boldo/grocery-list-runner.git
sudo apt install git
ls
git clone https://github.com/ninja-boldo/grocery-list-runner.git
ls
rm -rf grocery-list-runner/
git clone --help
git clone --bare https://github.com/ninja-boldo/grocery-list-runner.git
ls
rm -rf grocery-list-runner.git/
ls
git clone https://github.com/ninja-boldo/grocery-list-runner.git .
ls
git init
git remote add origin https://github.com/ninja-boldo/grocery-list-runner.git
git pull origin main
git checkout -f main
ls
rm -rf .
rm -rf *
ls
git init
git remote add origin https://github.com/ninja-boldo/grocery-list-runner.git
git pull origin main
git checkout -f main
ls
rm -rf fresh-editor.deb 
rm main.sql 
rm maindb.sql 
ls
rm -rf *
ls
clear
git clone https://github.com/ninja-boldo/grocery-list-runner.git
cp -r grocery-list-runner/. .
rm -rf grocery-list-runner
ls
ls
git add --all
git remote add origin https://github.com/ninja-boldo/grocery-list-runner.git
git push
git add -all
git add --all
sudo apt install btop
btop
htop
clear
sudo apt install htop
htop
ls
docker compose up -d
cd scripts/
ls
nano install-docker.sh
sudo chmod +x install-docker.sh 
cd ..
./scripts/install-docker.sh 
docker compose up -d
ls
cat .env.example 
nano .env.example 
cp .env.example .env
nano .env
clear
ls
docker compose up -d
docker compose up -d
docker compose up -d
docker image ls
docker rmi ollama
docker system prune -a
docker compose down -v
docker compose down -d
docker compose up -d
docker logs postgres-db 
docker logs grocery-app 
cat compose.yaml 
ls
rm -rf maindb.sql/
docker compose down -v
docker compose up -d
ls
cat compose.yaml 
docker compose down -v
nano compose.yaml 
docker compose up -d
docker logs -f grocery-app 
docker logs -f grocery-app 
nano scripts/increase-swap.sh
chmod +x scripts/increase-swap.sh 
./scripts/increase-swap.sh 
du -sh
free -h
df -sh
df 
df -h
df -sh
df -t
df -T
df -h
clear
docker compose down -v
docker system prune -a --volumes
df -h /
docker compose up -d
clear
htop
docker logs -f grocery-app 
docker logs -f --tail 50grocery-app 
docker logs -f --tail 50 grocery-app 
docker logs -f grocery-app 
./restart.sh
./restart.sh
docker logs -f grocery-app 
./restart.sh
docker logs -f grocery-app 
./restart.sh
docker restart nginx 
