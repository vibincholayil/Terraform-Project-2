# Deploying an EC2 Instance in a Custom VPC with Terraform

This Terraform configuration demonstrates how to provision an AWS EC2 instance inside a custom VPC. Since some AWS accounts or regions do not have a default VPC, launching instances requires explicitly creating or referencing a VPC, subnet, and security groups by ID.

The setup includes:

- Creating a custom VPC and subnet
- Defining a security group that allows HTTP (port 80) and SSH (port 22) access
- Launching an EC2 instance in the specified subnet with the security group attached

This approach ensures compatibility with AWS accounts that lack a default VPC and prevents common errors related to missing VPC context during instance creation.
