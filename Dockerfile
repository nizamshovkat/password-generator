# Use an official OpenJDK runtime as a parent image
FROM openjdk:22-jdk-slim
# Set the working directory in the container
WORKDIR /app

# Copy the Maven build output into the container
COPY target/password-generator-0.0.1-SNAPSHOT.jar /app/password-generator.jar

# Make port 8080 available to the world outside this container
EXPOSE 8081

# Run the web service on container startup
CMD ["java", "-jar", "password-generator.jar"]
