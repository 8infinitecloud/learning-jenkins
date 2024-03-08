FROM jenkins/jenkins:latest

USER root

# Instala dependencias necesarias
RUN apt-get update \
    && apt-get install -y \
        python3 \
        python3-pip \
        unzip

# Actualiza pip y luego instala aws-cli
RUN pip3 install --upgrade pip \
    && pip3 install awscli

# Descarga e instala Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update \
    && apt-get install -y terraform

USER jenkins
