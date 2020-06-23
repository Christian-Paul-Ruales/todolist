#!/bin/sh
yum install nodejs
#curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.2/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
cp minikube /usr/local/bin && rm minikube

curl -L https://github.com/zchee/docker-machine-driver-xhyve/releases/download/v0.3.0/docker-machine-driver-xhyve > /usr/local/bin/docker-machine-driver-xhyve
chmod +x /usr/local/bin/docker-machine-driver-xhyve
sudo chown root:wheel /usr/local/bin/docker-machine-driver-xhyve
sudo chmod u+s /usr/local/bin/docker-machine-driver-xhyve
minikube start --vm-driver=xhyve
