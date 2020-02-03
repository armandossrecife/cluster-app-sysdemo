FROM ubuntu:16.04

MAINTAINER Armando Soares <armando@ufpi.edu.br>

WORKDIR /root

# install git, maven, vim, openjdk and wget
RUN apt-get update && apt-get install -y git maven vim openjdk-8-jdk wget

# Faz o clone de repositorio sysdemo
RUN git clone https://github.com/armandossrecife/sysdemo.git

# Vai para o diretorio /root/sysdemo
WORKDIR /root/sysdemo

# set environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

COPY /docker/commands.sh /root/sysdemo/commands.sh
RUN ["chmod", "+x", "/root/sysdemo/commands.sh"]
ENTRYPOINT ["/root/sysdemo/commands.sh"]

EXPOSE 8080
