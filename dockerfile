FROM openjdk:17-jdk-slim-buster 
VOLUME /tmp 
COPY target/wavexc-discovery-service-0.0.1-SNAPSHOT.jar discovery-service.jar 
ENTRYPOINT ["java","-jar","discovery-service.jar"]