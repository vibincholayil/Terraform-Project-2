resource "aws_instance" "webpage1" {
  ami           = "ami-04da26f654d3383cf"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  
  tags = {
    Name = "HelloWorld"
  }
  
}