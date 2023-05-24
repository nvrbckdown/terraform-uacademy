#! /bin/bash

sudo apt-get update

# Install k3s
curl -sfL https://get.k3s.io | sh -

# Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
export KUBECONFIG=/etc/rancher/k3s/k3s.yaml

# Prepare cluster for deployment
kubectl create namespace microservices
kubectl create serviceaccount vault-auth -n microservices
kubectl label node $HOSTNAME staging=true

