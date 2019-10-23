FROM openjdk:8u191-jdk-alpine3.9
WORKDIR /app
COPY .mvn/ .mvn/
COPY src/ src/
COPY mvnw .
COPY pom.xml .
RUN ./mvnw -q clean package
CMD java -jar target/demo-0.0.1-SNAPSHOT.jar