variable "region" {
  default     = "eu-west-2"
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