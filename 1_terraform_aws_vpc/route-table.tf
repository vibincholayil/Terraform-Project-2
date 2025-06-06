# create RT for pvt subnet
resource "aws_route_table" "pvt_rt" {
  vpc_id = aws_vpc.vibin_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.nat_gateway.id
 }
}

# create RT for pub subnet  
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.vibin_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
 }
}


# associate RT with pvt subnet
resource "aws_route_table_association" "pvt_rt_assoc" {
  subnet_id      = aws_subnet.myprivatesubnet.id
  route_table_id = aws_route_table.pvt_rt.id
}


# associate RT with pub subnet
resource "aws_route_table_association" "pub_rt_assoc" {
  subnet_id      = aws_subnet.mypublicsubnet.id
  route_table_id = aws_route_table.pub_rt.id
}

