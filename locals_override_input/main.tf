variable "bucket_prefix" {
  description = "The prefix for the S3 bucket"
  type        = string
  default     = "my-bucket-prefix"
}

locals {
    bucket_name = "${var.bucket_prefix}-bucket"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = local.bucket_name

  tags = {
    Name        = local.bucket_name
    Environment = "Dev"
  }
}