FROM centos:7
RUN yum install mc java-1.8.0-openjdk-devel wget -y
WORKDIR /opt/
RUN wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-8/v8.5.5/bin/apache-tomcat-8.5.5.tar.gz
RUN tar -zxvf *.tar.gz && mv apache-tomcat-8.5.5 tomcat
RUN rm *.tar.gz
CMD ["/opt/tomcat/bin/catalina.sh", "run"]