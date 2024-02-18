FROM --platform=linux/amd64 openjdk:17-jdk-alpine3.14

WORKDIR /app

COPY ../demo/.mvn/ .mvn
COPY ../demo/mvnw ../demo/pom.xml ./
RUN ./mvnw dependency:go-offline

COPY ./demo/src ./src

CMD ["./mvnw", "spring-boot:run"]