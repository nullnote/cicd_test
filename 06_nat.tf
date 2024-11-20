resource "aws_eip" "jylee-eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "jylee-nat" {
  allocation_id = aws_eip.jylee-eip.id
  subnet_id     = aws_subnet.jylee-puba.id

  tags = {
    Name = "jylee-nat"
  }
}
