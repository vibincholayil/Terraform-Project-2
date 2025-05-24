# Exercise 8 – 04-Backend, which demonstrates how to configure Terraform remote state using S3 as backend and DynamoDB for state locking.

## Exercise: Configure Terraform Remote Backend using S3 & DynamoDB

### Terraform Files Involved
- s3bucket.tf → creates S3 bucket for storing .tfstate
- dynamodb.tf → creates DynamoDB table for state locking
- ec2.tf → launches a sample EC2 instance
- backend.tf → defines the backend configuration pointing to S3 + DynamoDB

### Objective  
Manage Terraform state remotely in an S3 bucket (cnlbackendbucket2022) and lock state updates using DynamoDB (terraform-up-and-running-locks), ensuring safe and collaborative infrastructure provisioning.

### Step 1: Create S3 Backend Bucket
- s3bucket.tf

```
resource "aws_s3_bucket" "backend" {
  bucket = "cnlbackendbucket2022"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name = "Terraform Backend Bucket"
  }
}
```

