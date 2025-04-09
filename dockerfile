# Étape 1 : Builder l’application
FROM maven:3.9.4-eclipse-temurin-17 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package

# Étape 2 : Créer une image légère avec juste le jar
FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY --from=build /app/target/java-docker-app-1.0-SNAPSHOT-jar-with-dependencies.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
