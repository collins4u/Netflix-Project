# This code describes the steps to create a vpc

provider "aws" {
  region = "us-west-2"  # Replace with your desired AWS region
}

resource "aws_vpc" "example_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "example-vpc"
  }
}