#FROM openjdk:19-jdk-alpine3.16
FROM maven:3.8.6-eclipse-temurin-19-alpine
#FROM maven:3-amazoncorretto-19


RUN apk add --update docker openrc
RUN rc-update add docker boot


ENTRYPOINT ["java","-jar","/everywheresystems-0.0.1-SNAPSHOT.jar"]
