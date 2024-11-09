# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Build the application using Maven
RUN ./mvnw package -DskipTests

# Expose port 8080 (or any port your application uses)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/spring-batch-demo-0.0.1-SNAPSHOT.jar"]