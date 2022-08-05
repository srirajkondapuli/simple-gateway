#!/bin/sh

cd ../manifests
kubectl apply -f config-service-cluster.yml
kubectl get all