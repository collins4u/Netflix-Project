# This code describes the steps to create an ec2 instance

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"  # Replace with your desired AMI ID
  instance_type = "t2.micro"
  key_name      = "my-key-pair"

  tags = {
    Name = "example-instance"
  }
}