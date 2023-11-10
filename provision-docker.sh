sudo apt-get update
sudo apt-get install docker.io -y
docker -v
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
# sudo usermod -aG docker $USER
sudo usermod -aG docker vagrant
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "/home/$USER/.docker" -R
sudo apt  install docker-compose -y


su - $USER
