resource "aws_s3_bucket" "my_bucket" {
  count = var.create_bucket ? 1 : 0
  bucket = "vibinbucket123"

tags = {
    name        = "vibinbucket123"
    Environment = "dev"
    }
}