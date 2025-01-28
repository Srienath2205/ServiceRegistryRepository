# Use a Maven image with JDK pre-installed
FROM openjdk:latest
# Set the working directory in the container
WORKDIR /app
# Copy the pom.xml and source code into the container
#COPY pom.xml .
#COPY src ./src
# # Build the Spring Boot application
# RUN mvn clean package -DskipTests
# Copy the JAR file into the container
COPY target/*.jar app.jar
#COPY .env .env
 
# Expose the application port
EXPOSE 8761
# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
