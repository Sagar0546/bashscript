sudo yum -y install git 
sudo yum -y install docker 
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/k-vamc/wordpress.git
cd /home/ec2-user/workspace/slave1/bashscript/wordpress
docker-compose up -d
