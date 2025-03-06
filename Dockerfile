FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-11-jdk wget
ENTRYPOINT [“apt”, “install”, “git”, “-y”]
RUN git clone
RUN mkdir /usr/local/
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.100/bin/apache-tomcat-9.0.100.tar.gz
RUN cd apt install tar -y && tar -zxvf apache-tomcat-9.0.100.tar.gz
RUN mv apache-tomcat-9.0.100 tomcat
RUN mv 
RUN mv
RUN mv 
EXPOSE 8080
CMD /usr/local/tomcat/bin/
CMD ./startup.sh
