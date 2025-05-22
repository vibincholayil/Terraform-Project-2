resource "aws_instance" "webpage" {
  ami           = "ami-04da26f654d3383cf"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
   
      tags = {
    Name = "myvpc_vibin"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.1.0/24"

  tags = {
    Name = "my_private_subnet"
  }
}
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.2.0/24"

  tags = {
    Name = "my_public_subnet"
  }
}



resource "aws_security_group" "sg" {
    vpc_id = aws_vpc.myvpc.id

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
}
}