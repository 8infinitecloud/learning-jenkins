FROM jenkins/jenkins:latest

USER root

# Instala aws-cli
RUN apt-get update \
    && apt-get install -y awscli

# Descarga e instala Terraform
# Descarga e instala Terraform
RUN curl -fsSL -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip \
    && unzip /tmp/terraform.zip -d /tmp \
    && mv /tmp/terraform /usr/local/bin \
    && rm /tmp/terraform.zip

USER jenkins
