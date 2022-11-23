#FROM openjdk:19-jdk-alpine3.16
FROM maven:3-amazoncorretto-19
#COPY EveryWhereSystems_API.jar EveryWhereSystems_API.jar
ENTRYPOINT ["java","-jar","/EveryWhereSystems_API.jar"]
#ENTRYPOINT ["javac","/EveryWhereSystems_API/src/test/java/br/com/api/everywheresystems/EverywheresystemsApplicationTests.java"]


