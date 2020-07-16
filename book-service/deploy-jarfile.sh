#!/bin/sh

git clone https://github.com/erupothu/tutorial-microservices-grafana-prometheus.git
cd tutorial-microservices-grafana-prometheus
echo "modify permissions"
chmod 777 log.txt
chmod 777 pid.file

echo "killing existing server"
kill $(cat pid.file)

echo "building project"
mvn clean install

echo "deploying project"
nohup java -jar target/book-servie.jar > log.txt 2>&1 &
echo $! > pid.file
