FROM tomcat:9.0.111-jdk17-corretto-al2
RUN rm -rf /usr/local/tomcat/webapps/*
COPY MiniAmazon.war /usr/local/tomcat/webapps/ROOT.war
