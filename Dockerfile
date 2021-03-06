FROM ubuntu
MAINTAINER Leo

RUN apt-get update
RUN apt-get -qq -y install wget

RUN cd /

RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/otn-pub/java/jdk/8u201-b09/42970487e3af4f5aa5bca3f542482c60/jdk-8u201-linux-x64.tar.gz"
RUN tar zxvf jdk-8u201-linux-x64.tar.gz

RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.92/bin/apache-tomcat-7.0.92.tar.gz
RUN tar zxvf apache-tomcat-7.0.92.tar.gz

ENV JAVA_HOME=/jdk1.8.0_201
ENV PATH=$PATH:/jdk1.8.0_201/bin
CMD ["/apache-tomcat-7.0.92/bin/catalina.sh", "run"]
