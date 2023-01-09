#FROM maven:3.6.0-jdk-11-slim AS Build
#COPY src /student/src
#COPY pom.xml /student
#RUN mvn -f /student/pom.xml clean package
#RUN mvn -f /student/pom.xml install package
#############################################
#FROM openjdk:11-jre-slim
#EXPOSE 8080
#COPY --from=build /student/target/Student-0.0.1-SNAPSHOT.jar /student/Student.jar
#ENTRYPOINT ["java","-jar","/student/Student.jar"]

FROM openjdk:11-jre-slim
#COPY src /student/src
#COPY pom.xml /student
#COPY /target/Student-0.0.1-SNAPSHOT.jar /student/Student.jar
COPY . /student
EXPOSE 8080
#COPY --from=build /student/target/Student-0.0.1-SNAPSHOT.jar /student/Student.jar
ENTRYPOINT ["java","-jar","/student/target/Student-0.0.1-SNAPSHOT.jar"]