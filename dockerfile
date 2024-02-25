FROM openjdk:17-jdk-slim
WORKDIR /app
EXPOSE 8080
COPY target/jenkins-test.jar /app/jenkins-test.jar
CMD ["java", "-jar", "jenkins-test.jar"]
