#!/bin/sh

cd ../manifests
kubectl delete -f config-service-cluster.yml
