FROM jenkins/jenkins:latest

USER root

# Instala dependencias necesarias
RUN apt-get update \
    && apt-get install -y \
        python3 \
        python3-pip \
        unzip \
    && pip3 install --upgrade pip \
    && pip3 install awscli \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update && apt-get install terraform
