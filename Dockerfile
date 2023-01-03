FROM maven:3.6.3-openjdk-14-slim AS build
COPY . /app
WORKDIR /app
RUN mvn clean install

FROM openjdk:14-slim
COPY --from=build /app/target/*.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]
