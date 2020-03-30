# TEO - Resultado de Desafio.

Este é um case para aplicação de tecnologias emergentes e com métodos aplicáveis em um ambiente empresarial.

![Arquitetura Kotlin](docs/resources/arquitetura_kotlin.jpg "Arquitetura Kotlin")

## Etapas de Entrega do Projeto.

Containerização de uma aplicação em Kotlin.
Criação de um Helm chart para rodar em um cluster kubernetes.
Criação de uma Pipeline no GitLab CI.
Criação de uma Infraestrutura como código descrita em Terraform.
Criação da Infraestrutura como código na AWS via Pipeline.

## Exigências.

Pacotes necessários para execução deste case no GNU/Linux

* git >= 2.20.1
* Docker >= 19.03.8
* Helm >= 3.1.2
* Minikube >= 1.3.1
* Kotlin >= 1.2.61
* GitLab CI >= 12.9.0
* Gradle >= 4.10
* Terraform >= 0.12.24
 
## Exemplo de uso.

Para a reproduzir este desafio é necessário os seguintes passos para obter o êxito:

Passo 1 - Instalação dos pacotes necessários:

**GIT**
```sh
$ sudo apt update
$ sudo apt install git 
```
**DOCKER**
```sh
$ sudo apt-get update
$ sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
$ sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Neste próximo comando será necessário substituir a variável $HASH pelo resultado 
# dos ultimos caracteres na saída do comando acima.

$ sudo apt-key fingerprint $HASH
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io
```
**HELM**
```sh
$ sudo curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
$ sudo chmod 700 get_helm.sh
$ sudo ./get_helm.sh
```
**MINIKUBE**
```sh
$ sudo apt -y install qemu-kvm libvirt-daemon libvirt-daemon-system virtinst bridge-util
$ sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
$ sudo apt update
$ sudo apt -y install kubectl
$ sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -O minikube
$ sudo chmod 755 minikube docker-machine-driver-kvm2
$ sudo mv minikube docker-machine-driver-kvm2 /usr/local/bin/
$ sudo minikube version
```
**GITLAB**
```sh
$ sudo apt update
$ sudo apt -y install curl vim openssh-server ca-certificates
$ sudo curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
$ sudo export GITLAB_URL="https://git.example.com"
$ sudo EXTERNAL_URL="${GITLAB_URL}" apt install gitlab-ce
$ sudo gitlab-ctl reconfigure

Acesso o endereço definido por você na variável GITLAB_URL em nosso exemplo utilizamos: http://gitlab.example.com
```
**TERRAFORM**
```sh
$ sudo TER_VER=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'`
$ sudo wget https://releases.hashicorp.com/terraform/${TER_VER}/terraform_${TER_VER}_linux_amd64.zip
$ sudo mv terraform /usr/local/bin/
```

## Meta

Fábio A. Ferreira – [@fabaof](https://twitter.com/fabaof) – fantonios@gmail.com

## Resultados.


