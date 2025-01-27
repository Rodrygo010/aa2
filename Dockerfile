FROM openjdk:17-jdk-slim
VOLUME /tmp
ARG JAR_FILE=target/aa2.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]
