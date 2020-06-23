#!/bin/sh
minikube start --vm-driver=xhyve
kubectl create -f deployment.yaml
sleep 30
kubectl create -f service.yml
sleep 30
kubectl get pod
curl $(minikube service my-todolist --url)
sleep 30
#For Mac OS
open  "http://"$(minikube ip)":30061"
