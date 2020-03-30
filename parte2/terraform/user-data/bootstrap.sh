#!/bin/sh

# Instalação do Git
sudo apt update
sudo apt install git 

# Clone do Repositório e acesso ao arquivo principal
git clone https://github.com/fantonio/Teo.git
cd Teo/parte2

# Instalação do Docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Execução do Container
docker push fantonios/jiraya
docker run -it -p 8080:8080 fantonios/jiraya