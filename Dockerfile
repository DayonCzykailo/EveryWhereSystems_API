#FROM openjdk:19-jdk-alpine3.16
FROM maven:3-amazoncorretto-19
COPY everywheresystems-0.0.1-SNAPSHOT.jar everywheresystems-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/EveryWhereSystems_API.jar"]
#ENTRYPOINT ["javac","/EveryWhereSystems_API/src/test/java/br/com/api/everywheresystems/EverywheresystemsApplicationTests.java"]

#COPY . /EveryWhereSystems_API
#WORKDIR /EveryWhereSystems_API
#RUN mvn compile
#RUN mvn package
#WORKDIR /EveryWhereSystems_API/target
ENTRYPOINT "java -jar everywheresystems-0.0.1-SNAPSHOT.jar"

