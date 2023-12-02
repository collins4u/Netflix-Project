# this code describes the steps to create an s3 bucket

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-name"
  acl    = "private"

  tags = {
    Name        = "example-bucket"
    Environment = "production"
  }
}