# syntax = docker/dockerfile:1.0.0-experimental
FROM openjdk:8u191-jdk-alpine3.9 as builder
WORKDIR /builder
COPY . /builder
RUN --mount=target=/root/.m2,type=cache \
  ./mvnw clean package

FROM openjdk:8u191-jre-alpine3.9
ARG jar_file
WORKDIR /app
COPY --from=builder /builder/target/$jar_file /app/
ENV jar_file=$jar_file
CMD java -jar $jar_file
