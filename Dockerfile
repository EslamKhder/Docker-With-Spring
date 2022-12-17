FROM maven:3.6.0-jdk-11-slim
COPY src /student/src
COPY pom.xml /student
RUN mvn -f /student/pom.xml clean package
RUN mvn -f /student/pom.xml install package
#############################################
FROM openjdk:11-jre-slim
ENTRYPOINT["java","-jar","/student/target/Student-0.0.1-SNAPSHOT.jar"]