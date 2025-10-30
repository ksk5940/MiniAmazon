FROM tomcat:9.0.111-jdk17-corretto-al2
WORKDIR /usr/local/tomcat/webapps
COPY target/*.war .
