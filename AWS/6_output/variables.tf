variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"   
}

variable "pubsubcidr" {
  default     = "10.0.1.0/24"
}

variable "prisubcidr" {
  default     = "10.0.2.0/24"
}