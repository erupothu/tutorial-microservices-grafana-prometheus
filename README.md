# tutorial-microservices-grafana-prometheus

1. Install Docker
> sudo apt install docker.io

2. install Java and maven
> sudo apt install openjdk-11-jdk
> java --version
> sudo apt install maven
> mvn --version

3. clone git project
.git clone https://github.com/erupothu/tutorial-microservices-grafana-prometheus.git

4. deploy from dockerfile
> chmod 777 deploy-dockerfile.sh
> ./deploy-dockerfile.sh

OR

5. Deploy Jar
> chmod 777 deploy-jarfile.sh
>./deploy-jarfile.sh


5. Deploy prometheus
> docker pull prom/prometheus
> nano prometheus.yml
> docker run -d --name=prometheus -p 9090:9090 -v <PATH_TO_prometheus.yml_FILE>:/etc/prometheus/prometheus.yml prom/prometheus --config.file=/etc/prometheus/prometheus.yml

http://localhost:9090


6. Deploy Grafana
> docker run -d --name=grafana -p 3000:3000 grafana/grafana
http://localhost:3000




