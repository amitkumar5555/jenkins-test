FROM tomcat:8.0.20-jre8
MAINTAINER Amit <amit5555.kr@gmail.com>
EXPOSE 8080
COPY target/jenkins-test.jar /usr/local/tomcat/webapps/jenkins-test.jar