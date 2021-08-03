#!/bin/bash

echo "Configuring local environment to use docker daemon inside Minikube..."

eval $(minikube docker-env)

echo "Building application..."

docker build . -t nodesite

echo "Configuring Minikube ingress..."

minikube addons enable ingress

echo "Creating kubernetes deployment"

kubectl apply -f k8s/nodesite-deployment.yaml

echo "Creating kubernetes service"

kubectl apply -f k8s/nodesite-service.yaml

echo "Creating kubernetes ingress"

kubectl apply -f k8s/nodesite-ingress.yaml

echo "Done!"
