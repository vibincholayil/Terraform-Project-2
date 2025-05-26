resource "aws_subnet" "myprivatesubnet" {
  vpc_id     = aws_vpc.vibin_vpc.id
  cidr_block = var.private_subnet_cidrs

  tags = {
    Name = "my_private_subnet"
  }
}


resource "aws_subnet" "mypublicsubnet" {
  vpc_id     = aws_vpc.vibin_vpc.id
  cidr_block = var.public_subnet_cidrs

  tags = {
    Name = "my_public_subnet"
  }
}