FROM openjdk:11
MAINTAINER 'Amit'
COPY target/jenkins-test.jar /usr/app/
WORKDIR /usr/app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/jenkins-test.jar"]