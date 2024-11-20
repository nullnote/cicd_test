resource "aws_route_table" "jylee-rt" {
  vpc_id = aws_vpc.jylee-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jylee-ig.id
  }

  tags = {
    Name = "jylee-rt"
  }
}
