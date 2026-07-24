#Input variables for the ec2 instances
/*provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "ec2_module"{
    count = var.instance_count
    ami = "ami-01edba92f9036f76e"
    instance_type = var.instance_type
    tags ={
        Name = "${local.environment}-ec2-${count.index + 1}"
}
}
*/