FROM ubuntu
MAINTAINER Leo

RUN apt-get update
RUN apt-get -qq -y install wget

RUN cd /

RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3a%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk8-downloads-2133151.html; oraclelicense=accept-securebackup-cookie;" "https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz"
RUN tar zxvf jdk-8u191-linux-x64.tar.gz

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
RUN tar zxvf apache-tomcat-7.0.92.tar.gz

ENV JAVA_HOME=/jdk1.8.0_191
ENV PATH=$PATH:/jdk1.8.0_191/bin
CMD ["/apache-tomcat-7.0.92/bin/catalina.sh", "run"]
