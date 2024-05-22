provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = var.my_bucket_1

  tags = {
    Name        = "My first bucket"
    Environment = "devtest"
  }
}
