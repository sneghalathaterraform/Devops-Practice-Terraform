provider "aws"{
    region = "us-east-1"
}

resource "aws_instance" "ec2_module"{
   ami ="ami-01edba92f9036f76e"
   instance_type = var.instance_type
    count = var.instance_count
    tags ={
        Name = "${var.instance_name}-${count.index + 1}"
    }
}