#!/bin/sh

RESOURCE_GROUP=config-service-resource-group
CLUSTER_NAME=config-service-cluster
LOCATION=us-east-1
az group create --location $LOCATION --resource-group $RESOURCE_GROUP
az aks create --resource-group=$RESOURCE_GROUP --name=$CLUSTER_NAME --node-count=1 --generate-ssh-keys --node-vm-size Standard_B2s --enable-managed-identity
az aks get-credentials --overwrite-existing --name $CLUSTER_NAME --resource-group $RESOURCE_GROUP
cd ../manifests
kubectl apply -f config-service-cluster.yml