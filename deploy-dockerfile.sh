#!/bin/sh

git clone https://github.com/erupothu/tutorial-microservices-grafana-prometheus.git
cd tutorial-microservices-grafana-prometheus
mvn clean install


docker stop tutorial-microservices-grafana-prometheus || true && docker rm tutorial-microservices-grafana-prometheus || true
docker rmi tutorial-microservices-grafana-prometheus || true
docker build -f Dockerfile -t tutorial-microservices-grafana-prometheus .
docker run --name tutorial-microservices-grafana-prometheus -p 8081:8081 -d data-warehouse:latest
