FROM adoptopenjdk:17-jre-hotspot
WORKDIR /app
EXPOSE 8080
COPY target/jenkins-test.jar /usr/local/tomcat/webapps/jenkins-test.jar
CMD ["java", "-jar", "jenkins-test.jar"]
