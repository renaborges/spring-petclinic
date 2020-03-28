#!/bin/bash

#Make jar file executable for root inside the container
chmod 755 target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar

java -jar /app/target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar &

sleep 90

curl localhost:8080

mvn -B test

