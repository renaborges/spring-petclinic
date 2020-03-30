#!/bin/bash

#Run Maven Build inside container
run: mvn -B package --file pom.xml

#Make jar file executable for root inside the container
chmod 755 target/*.jar

java -jar /app/target/*.jar &

sleep 90

curl localhost:8080

mvn -B test

