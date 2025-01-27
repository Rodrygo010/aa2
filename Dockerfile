FROM openjdk:17-jdk-slim
VOLUME /tmp
ARG JAR_FILE=target/aa2.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
