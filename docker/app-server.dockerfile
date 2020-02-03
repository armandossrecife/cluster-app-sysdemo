FROM ubuntu:16.04

MAINTAINER Armando Soares <armando@ufpi.edu.br>

WORKDIR /root

# install git, maven, vim, openjdk and wget
RUN apt-get update && apt-get install -y git maven vim openjdk-8-jdk wget

# Faz o clone de repositorio sysdemodocker
RUN git clone https://github.com/topicos-sistemas-distribuidos/sysdemodocker.git

# Vai para o diretorio /root/sysdemodocker
WORKDIR /root/sysdemodocker

# set environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

COPY /docker/commands.sh /root/sysdemodocker/commands.sh
RUN ["chmod", "+x", "/root/sysdemodocker/commands.sh"]
ENTRYPOINT ["/root/sysdemodocker/commands.sh"]

EXPOSE 8080
