FROM tomcatimage

WORKDIR /opt/tomcat/webapps/
ARG fullversion
ARG tomfullversion
RUN wget http://10.0.0.10:8081/nexus/content/repositories/releases/epam/build/${fullversion}/build%23%23${tomfullversion}.war