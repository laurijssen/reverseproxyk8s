#!/bin/bash

kubectl delete -f deploy.yaml

docker build -t myrevproxy .
docker tag myrevproxy 192.168.56.3:5000/myrevproxy
docker push 192.168.56.3:5000/myrevproxy

pushd proxy
docker build -t nginxsidecar .
docker tag nginxsidecar 192.168.56.3:5000/nginxsidecar
docker push 192.168.56.3:5000/nginxsidecar

popd

kubectl apply -f deploy.yaml 