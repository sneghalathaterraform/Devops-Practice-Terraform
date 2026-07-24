variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_pair_name" {
  description = "Your EC2 key pair name from Step 1"
  type        = string
}

variable "allowed_ip" {
  description = "Your IP in CIDR form from Step 2"
  type        = string
}