/*provider "aws" {
  region = "us-east-1"
}
locals {
  env ="dev"
}
resource "aws_vpc" "dev-vpc"{
  cidr_block = "172.0.0.0/16"
  tags ={
    Name = "${local.env}-VPC" 
     }
}
resource "aws_subnet" "dev-subnet"{
  vpc_id = aws_vpc.dev-vpc.id
  cidr_block = "172.0.1.0/24"
  tags ={
  Name = "${local.env}-dev-subnet"
  }
}
resource "aws_instance" "new" {
  ami           = "ami-01edba92f9036f76e"
  subnet_id = aws_subnet.dev-subnet.id
  instance_type = "t3.micro"
  tags = {
    Name = "${local.env}--server"
  }
}*/
/*terraform {
  backend "s3" {
    bucket = "new-bucket-workspace-2710"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

terraform{
backend "local"{
  path = "AWS_Cloud_engineer/terraform.tfstate"
}
}
import {
  to = aws_instance.new_import-block-server
  id = "i-0ad1866c4a5f1df25"
}
provider "aws" {
  region = "ap-south-1"
  alias = "mumbai"
}
resource "aws_instance" "mumbai-new-server"{
  instance_type = "t3.micro"
  provider = aws.mumbai
  ami = "ami-0b910d1016287a5e7"
  tags = {
    Name = "mumbai-new-server"
  }
}
*/