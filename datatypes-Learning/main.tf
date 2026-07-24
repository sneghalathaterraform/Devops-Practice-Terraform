/*provider "aws" {
  region = "us-east-1"
}

resource "aws_default_vpc" "default" {}

resource "aws_instance" "ec2_module" {
  ami                         = "ami-01edba92f9036f76e"
  instance_type               = "t3.micro"
  associate_public_ip_address = var.assign_public_ip
  tags                        = var.common_tags

  root_block_device {
    volume_size = var.root_volume.volume_size
    volume_type = var.root_volume.volume_type
  }
}

resource "aws_security_group" "web" {
  vpc_id = aws_default_vpc.default.id

  ingress {
    from_port   = var.http_rule[0]
    to_port     = var.http_rule[1]
    protocol    = var.http_rule[2]
    cidr_blocks = ["0.0.0.0/0"]
  }
}*/ #Data types practice (bool, map, object, tuple) - kept for reference, not applied

