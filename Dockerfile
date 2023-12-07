FROM gradle:jdk17-jammy AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon


FROM openjdk:8-jdk-alpine
COPY --from=build /home/gradle/src/build/libs/lineBot-0.0.1-SNAPSHOT.jar lineBot.jar
ENTRYPOINT ["java","-jar","/lineBot.jar"]