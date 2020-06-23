#!/bin/sh
# Installing node
brew install node
#Installing kubectl
brew install kubectl
#Installing minikube https://github.com/kubernetes/minikube/releases
brew cask install minikube 
#Installing VM xhyve for Mac
curl -L https://github.com/zchee/docker-machine-driver-xhyve/releases/download/v0.3.0/docker-machine-driver-xhyve > /usr/local/bin/docker-machine-driver-xhyve
chmod +x /usr/local/bin/docker-machine-driver-xhyve
sudo chown root:wheel /usr/local/bin/docker-machine-driver-xhyve
sudo chmod u+s /usr/local/bin/docker-machine-driver-xhyve
docker build -t my-todolist:latest .