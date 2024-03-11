FROM jenkins/jenkins:latest

USER root

# Instala aws-cli
RUN apt-get update \
    && apt-get install -y awscli

# Descarga e instala Terraform
RUN curl -fsSL -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/0.15.0/terraform_0.15.0_linux_amd64.zip \
    && unzip /tmp/terraform.zip -d /tmp \
    && mv /tmp/terraform /usr/local/bin \
    && rm /tmp/terraform.zip

# Instala Node.js 20.11.1
RUN curl -fsSL https://nodejs.org/dist/v20.11.1/node-v20.11.1-linux-x64.tar.xz -o /tmp/node.tar.xz \
    && tar -xf /tmp/node.tar.xz -C /tmp \
    && mv /tmp/node-v20.11.1-linux-x64 /usr/local/node \
    && rm /tmp/node.tar.xz

# Instala ZIP
RUN apt-get install -y zip

# Agrega Node.js al PATH
ENV PATH="/usr/local/node/bin:${PATH}"

USER jenkins
