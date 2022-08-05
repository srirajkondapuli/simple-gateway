#!/bin/sh

cd ../gateway-service/
mvn clean package
docker image rm -f skondapuli/gateway-service:k8
docker image build -t skondapuli/gateway-service:k8 .
docker push skondapuli/gateway-service:k8
cd ..
cd config-service/
mvn clean package
docker image rm -f skondapuli/config-service:k8
docker image build -t skondapuli/config-service:k8 .
docker push skondapuli/config-service:k8