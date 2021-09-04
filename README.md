Build image using Dockerfile 

```
docker build -t jenkins/blueocean_ci --no-cache .
```

Start container jenkins 

```
docker run -p 8080:8080 -p 50000:50000 --name jenkins jenkins/blueocean_ci
```


Access alphine ssh (ash)

```
docker exec -it jenkins /bin/ash
```

Token 

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


Pulling sonarqube 

```
docker pull sonarqube
```

Start container sonarqube 

```
docker run -d --name sonar -p 9000:9000 -p 9092:9092 sonarqube 
```

Connect jenkins and sonar using networks // create network 

```
docker network create jenkins_sonarqube
```

Adding containers to network 

```
docker network connect jenkins_sonarqube sonar
docker network connect jenkins_sonarqube jenkins
docker network connect jenkins_sonarqube local
```
Token sonar 

```
088433d0c6d9ed24929f3caed9cb05eff62c6b3e
```


netsh interface portproxy add v4tov4 listenport=2375 listenaddress=[public IP, NOT 0.0.0.0] connectaddress=127.0.0.1 connectport=2375

netsh interface portproxy add v4tov4 listenport=2375 listenaddress=192.168.1.94 connectaddress=127.0.0.1 connectport=2375


192.168.1.94