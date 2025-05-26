resource "aws_vpc" "vibin_vpc" {
    cidr_block = var.vpc_cidr

    tags = {
     Name = "vibin_vpc"
    }
}