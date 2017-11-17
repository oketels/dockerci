FROM openjdk:8u111-jdk-alpine
VOLUME /tmp
ADD target/dockerci-0.0.1-SNAPSHOT.jar dockerci.jar
EXPOSE 8080:8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/dockerci.jar"]
