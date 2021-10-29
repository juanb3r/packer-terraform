#!/bin/bash
# Instalar Docker
sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker

#Agregar el usuario ubuntu al grupo docker
sudo groupadd docker
sudo usermod -aG docker ubuntu