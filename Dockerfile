# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Spring Boot JAR file from the host machine to the container
# Assuming the JAR file is located in the target folder after you build the Spring Boot project
COPY target/Devops-integration.jar Devops-integration.jar

# Expose the port your Spring Boot application is running on (9991)
EXPOSE 9991

# Run the Spring Boot application when the container starts
CMD ["java", "-jar", "Devops-integration.jar"]
