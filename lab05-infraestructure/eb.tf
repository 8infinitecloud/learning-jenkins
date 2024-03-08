provider "aws" {
  region = "us-west-2" # Cambia esto a la región de tu preferencia
}

resource "aws_elastic_beanstalk_application" "example" {
  name = "my-nodejs-app"
}

resource "aws_elastic_beanstalk_environment" "example" {
  name                = "my-nodejs-env"
  application         = aws_elastic_beanstalk_application.example.name
  solution_stack_name = "64bit Amazon Linux 2 v5.0.2 running Node.js 12"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro" # Cambia esto a la instancia que desees
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "SingleInstance"
  }

  setting {
    namespace = "aws:elasticbeanstalk:container:nodejs"
    name      = "NodeCommand"
    value     = "npm start" # Esto puede variar dependiendo de cómo inicies tu aplicación Node.js
  }
}
