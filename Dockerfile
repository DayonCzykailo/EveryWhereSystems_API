#FROM openjdk:8-jdk-alpine
FROM openjdk:19-jdk-alpine3.16
COPY EveryWhereSystems_API.jar EveryWhereSystems_API.jar
ENTRYPOINT ["java","-jar","/EveryWhereSystems_API.jar"]