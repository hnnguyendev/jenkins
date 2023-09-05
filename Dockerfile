# syntax=docker/dockerfile:1

FROM gradle:7.6.1-alpine AS builder
WORKDIR /temp
COPY gradlew .
COPY build.gradle .
COPY settings.gradle .
COPY gradle gradle
COPY src src
RUN ./gradlew build

FROM eclipse-temurin:11-jdk-jammy
ENV ARTIFACT_NAME=jenkins-0.0.1-SNAPSHOT.jar
ENV APP_HOME=/app
WORKDIR $APP_HOME
COPY --from=builder /temp/build/libs/$ARTIFACT_NAME .
EXPOSE 8080
ENTRYPOINT exec java -jar ${ARTIFACT_NAME}
