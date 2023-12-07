FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/lineBot-0.0.1-SNAPSHOT.jar /lineBot.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/lineBot.jar"]