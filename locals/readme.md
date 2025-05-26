# locals-variable
Using Local Variables in Terraform  

creating an AWS S3 Bucket using local values for the bucket name and environment tag.  
Demonstrates how to use locals {} in Terraform to define reusable, scoped variables for infrastructure provisioning.  

### locals block defines local variables:  
- bucket_name: Used for naming the S3 bucket.
- env: Tag value to represent the environment (e.g., development).

