FROM openjdk:8-jdk-alpine
ADD /target/lineBot-0.0.1-SNAPSHOT.jar /lineBot.jar
RUN bash -c 'touch /lineBot.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","/lineBot.jar"]