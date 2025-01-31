# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/bank-management-system-0.0.1-SNAPSHOT.jar /app/bank-management-system-0.0.1-SNAPSHOT.jar
EXPOSE 8081

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/bank-management-system-0.0.1-SNAPSHOT.jar"]

