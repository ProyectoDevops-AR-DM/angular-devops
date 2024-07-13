provider "aws" {
  region = var.aws_region
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket"
}

resource "aws_s3_bucket" "my_app_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.my_app_bucket.bucket
}