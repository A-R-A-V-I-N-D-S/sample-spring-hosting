FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

RUN ./mvnw package -DskipTests

EXPOSE 8080


CMD ["java", "-jar", "target/spring-batch-demo-0.0.1-SNAPSHOT.jar"]