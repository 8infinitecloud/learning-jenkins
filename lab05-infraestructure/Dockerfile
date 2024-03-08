FROM jenkins/jenkins:latest

USER root

# Instala aws-cli
RUN apt-get update \
    && apt-get install -y awscli

# Descarga e instala Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update \
    && apt-get install -y terraform

USER jenkins
