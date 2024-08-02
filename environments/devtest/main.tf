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

locals {
  s3_folders = [
    var.my_folder_1,
    var.my_folder_2
  ]
}

resource "aws_s3_object" "directory_structure" {
  for_each = toset(local.s3_folders)

  bucket       = var.my_bucket_1
  key          = each.value
}

