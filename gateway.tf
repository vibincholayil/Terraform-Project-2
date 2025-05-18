resource "aws_internet_gateway" "igw_terraform_2" {
    vpc_id = aws_vpc.vpc_terraform_2.id
}

resource "aws_nat_gateway" "ngw_terraform_2" {
    allocation_id = aws_eip.eip_terraform_2.id
    subnet_id     = aws_subnet.public_subnet[0].id
}

resource "aws_eip" "eip_terraform_2" {
    vpc = true
  
}

