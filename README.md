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

