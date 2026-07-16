provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "new" {
  ami           = "ami-01edba92f9036f76e"
  instance_type = "t3.micro"
  count = 2
  tags = {
    Name = "Snegha-Server-2710"
  }
}

/*import {
  to = aws_instance.new_import-block-server
  id = "i-0ad1866c4a5f1df25"
}
*/
provider "aws" {
  region = "ap-south-1"
  alias = "mumbai"
}
resource "aws_instance" "mumbai-new-server"{
  instance_type = "t3.micro"
  provider = aws.mumbai
  ami = "ami-0b910d1016287a5e7"
  tags = {
    Name = "Mumbai-Server-2710"
  }
}
