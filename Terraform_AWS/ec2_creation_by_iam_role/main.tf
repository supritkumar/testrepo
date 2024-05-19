provider "aws" {
    region = "us-east-1"
    assume_role {
      role_arn = "arn:aws:iam::905418133190:role/aws_tf_role"
    }
    alias = "my_instance_with_role"
}

resource "aws_instance" "my_instance_with_role" {      
  ami           = "ami-0f403e3180720dd7e" 
  instance_type = "t2.micro"              
  tags = {
    "Name" = "MyEC2InstancebYIAMRole" 
  }
}