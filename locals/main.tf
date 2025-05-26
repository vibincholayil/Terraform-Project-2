locals {
    bucket_name = "vibinbucket123"
    environment = "dev"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = local.bucket_name
  tags = {
    name        = local.bucket_name
    Environment = local.environment
  }
}