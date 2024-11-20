resource "aws_route_table" "jylee-natrt" {
  vpc_id = aws_vpc.jylee-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.jylee-nat.id
  }

  tags = {
    Name = "jylee-natrt"
  }
}
