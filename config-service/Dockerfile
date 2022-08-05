FROM amazoncorretto:17

RUN yum update -y && yum install -y curl
WORKDIR /app
COPY /build/libs/config-service-0.0.1-SNAPSHOT.jar /app/
ENTRYPOINT ["java", "-jar", "config-service-0.0.1-SNAPSHOT.jar"]