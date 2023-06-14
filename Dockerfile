# FROM eclipse-temurin:17-jre
# FROM eclipse-temurin:17-jdk-jammy
# WORKDIR /app
# COPY .mvn/ .mvn
# COPY mvnw pom.xml ./
# RUN ./mvnw dependency:resolve
# COPY src ./src
# EXPOSE 8080
# CMD ["./mvnw", "spring-boot:run"]
FROM openjdk:17
# Setting up work directory
WORKDIR /app

# Copy the jar file into our app
COPY ./target/mytodo-1.0-SNAPSHOT.jar /app

# Exposing port 8080
EXPOSE 8080

# Starting the application
CMD ["java", "-jar", "mytodo-1.0-SNAPSHOT.jar"]
