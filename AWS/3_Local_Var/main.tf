locals {
  bucket_name = "mytestbucketvibin"
  env = "dev"
}

resource "aws_s3_bucket" "mybucket" {
    bucket = local.bucket_name
    
}