FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} lineBot.jar
ENTRYPOINT ["java","-jar","/lineBot.jar"]