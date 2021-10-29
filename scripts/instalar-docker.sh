#!/bin/bash
# Instalar Docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

#Agregar el usuario ubuntu al grupo docker
sudo groupadd docker
sudo usermod -aG docker ubuntu