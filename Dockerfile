FROM openjdk:18
WORKDIR /app
COPY ./target/service-registry-0.0.1-SNAPSHOT.jar /app
EXPOSE 8761
CMD ["java", "-jar", "service-registry-0.0.1-SNAPSHOT.jar"]
