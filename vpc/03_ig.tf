resource "aws_internet_gateway" "jylee-ig" {
  vpc_id = aws_vpc.jylee-vpc.id

  tags = {
    Name = "jylee-ig"
  }
}
