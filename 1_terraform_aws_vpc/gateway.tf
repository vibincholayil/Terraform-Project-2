# create internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vibin_vpc.id
}



# NAT gateway resource attached with vpc
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.igw_eip.id
  subnet_id     = aws_subnet.mypublicsubnet.id
}


# create elastic ip for NAT gateway
resource "aws_eip" "igw_eip" {
  domain = "vpc"
}