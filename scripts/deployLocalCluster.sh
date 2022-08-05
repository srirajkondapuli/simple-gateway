#!/bin/sh

cd ../manifests
kubectl delete -f config-service-cluster.yml
kubectl apply -f config-service-cluster.yml
kubectl get all