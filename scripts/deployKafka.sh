#!/bin/sh

cd ../manifests
kubectl apply -f deploy-kafka.yaml
kubectl get all