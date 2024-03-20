provider "aws" {
  region = "us-east-1" # Cambia esto a la región de tu preferencia
}

resource "aws_ecr_repository" "my_repository" {
  name = "my-container-repo"
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "my-ecs-cluster"
}

resource "aws_ecs_task_definition" "my_task_definition" {
  family                = "my-task-family"
  container_definitions = <<DEFINITION
[
  {
    "name": "my-container",
    "image": "${aws_ecr_repository.my_repository.repository_url}:latest",
    "cpu": 256,
    "memory": 512,
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ]
  }
]
DEFINITION
}

output "repository_url" {
  value = aws_ecr_repository.my_repository.repository_url
}

