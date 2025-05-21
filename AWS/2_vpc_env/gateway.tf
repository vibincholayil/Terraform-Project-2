# create Internet gateway
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id
}

# create NAT gateway        
resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.myEIP.id
  subnet_id     = aws_subnet.public_subnet.id
}

# create Elastic IP for NAT gateway 
resource "aws_eip" "myEIP" {
  domain = "vpc"
}