FROM amazoncorretto:17

RUN apt-get update && apt-get install -y curl
WORKDIR /app
COPY /target/config-service-0.0.1-SNAPSHOT.jar /app/
ENTRYPOINT ["java", "-jar", "config-service-0.0.1-SNAPSHOT.jar"]