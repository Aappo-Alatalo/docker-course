# Using tag "8" since readme told to use Java version 8
FROM amazoncorretto:8

# Using port 8080 since readme told to use port 8080
EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]