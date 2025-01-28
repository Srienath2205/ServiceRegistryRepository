FROM openjdk:18
WORKDIR /app
COPY ./target/tap-serviceregistry.jar /app
EXPOSE 8761
CMD ["java", "-jar", "tap-serviceregistry.jar"]
