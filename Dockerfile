# Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/mongoconnector-0.0.1-SNAPSHOT.jar /app/mongoconnector-0.0.1-SNAPSHOT.jar

# Expose the port your Spring Boot application runs on (default is 8080)
EXPOSE 8080

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "mongoconnector-0.0.1-SNAPSHOT.jar"]
