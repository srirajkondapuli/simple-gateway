FROM amazoncorretto:17

RUN yum update -y && yum install -y curl
WORKDIR /app
COPY /build/libs/gateway-service-0.0.1-SNAPSHOT.jar /app/
ENTRYPOINT ["java", "-jar", "gateway-service-0.0.1-SNAPSHOT.jar"]