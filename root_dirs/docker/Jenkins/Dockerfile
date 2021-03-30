FROM jenkins/jenkins:lts

USER root
RUN apt update
RUN apt install -y build-essential cmake python3 python3-pip
RUN pip3 install conan