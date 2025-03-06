FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-11-jdk wget git
RUN git clone https://github.com/Hariteja82/tomcat-Dockerfile.git
RUN mkdir /usr/local/
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz
RUN cd apt install tar -y && tar -zxvf apache-tomcat-9.0.100.tar.gz
RUN mv apache-tomcat-9.0.100 tomcat
RUN mv mv /root/tomcat-Dockerfile/host/context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
RUN mv mv /root/tomcat-Dockerfile/manager/context.xml /usr/local/tomcat/webapps/host-managermanager/META-INF/context.xml
RUN mv /root/tomcat-Dockerfile/tomcat-users.xml  /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080
CMD /usr/local/tomcat/bin/
CMD ./startup.sh
