terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "null_resource" "local_exec_demo" {
  provisioner "local-exec" {
    command = "echo Hello from local-exec, running on my own machine! >> creation_log.txt"
  }
}