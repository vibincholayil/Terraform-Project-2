# create route table in publiic subnet
resource "aws_route_table" "public_subnet_route_table" {
  vpc_id = aws_vpc.vpc_terraform_2.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_terraform_2.id

  }


  resource "route" "private_subnet_route" {
    count = length(aws_subnet.private_subnet)
    route_table_id = aws_route_table.public_subnet_route_table.id
    destination_cidr_block = var.private_subnet_cidrs[count.index]
    nat_gateway_id = aws_nat_gateway.ngw_terraform_2.id
    
  }