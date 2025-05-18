resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.vpc_terraform_2.id
  cidr_block        = var.public_subnet_cidrs[count.index]
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.vpc_terraform_2.id
  cidr_block        = var.private_subnet_cidrs[count.index]
}