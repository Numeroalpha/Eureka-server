# Stage 1: Build stage
FROM maven:3.9.9-eclipse-temurin-21 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Runtime stage
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app

# Copy the jar from build stage
COPY --from=builder /app/target/discovery-service-0.0.1-SNAPSHOT.jar discovery-service.jar

ENTRYPOINT ["java","-jar","discovery-service.jar"]

ENTRYPOINT ["java", \
  "-XX:+UseSerialGC", \
  "-Xmx384m", \
  "-Xss256k", \
  "-XX:TieredStopAtLevel=1", \
  "-noverify", \
  "-jar", "discovery-service.jar"]
