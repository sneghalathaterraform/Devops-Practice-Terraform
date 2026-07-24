resource "aws_security_group" "demo_sg" {
  name        = "remote-exec-demo-sg"
  description = "Allow SSH for remote-exec practice"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["99.246.198.79/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "demo_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  key_name               = "Key_pair_Linux"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]

  tags = {
    Name = "remote-exec-demo"
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Hello from remote-exec, running INSIDE the server!' >> /home/ubuntu/test.txt",
      "cat /home/ubuntu/test.txt"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("Key_pair_Linux.pem")
    host        = self.public_ip
  }
}