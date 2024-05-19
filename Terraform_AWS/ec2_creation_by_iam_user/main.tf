provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "EC2_using_IAMUser" {
  ami           = "ami-0f403e3180720dd7e"
  instance_type = "t2.micro"
  tags = {
    "Name" = "MyEC2InstanceByIAMUser"
  }
}