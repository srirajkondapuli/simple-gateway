#!/bin/sh

cd ../manifests
kubectl delete -f deploy-kafka.yaml

kubectl get all