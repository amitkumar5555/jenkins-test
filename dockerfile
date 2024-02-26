FROM openjdk:17-jdk-slim
WORKDIR /app
EXPOSE 9090
COPY target/jenkins-test.jar /app/jenkins-test.jar
CMD ["java", "-jar", "jenkins-test.jar"]
