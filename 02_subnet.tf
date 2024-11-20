# puba 서브넷 생성
resource "aws_subnet" "jylee-puba" {
  vpc_id     = aws_vpc.jylee-vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "jylee-puba"
  }
}

# pubc 서브넷 생성
resource "aws_subnet" "jylee-pubc" {
  vpc_id     = aws_vpc.jylee-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "jylee-pubc"
  }
}

# pria 서브넷 생성
resource "aws_subnet" "jylee-pria" {
  vpc_id     = aws_vpc.jylee-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "jylee-pria"
  }
}

# pric 서브넷 생성
resource "aws_subnet" "jylee-pric" {
  vpc_id     = aws_vpc.jylee-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "jylee-pric"
  }
}

# dba 서브넷 생성
resource "aws_subnet" "jylee-dba" {
  vpc_id     = aws_vpc.jylee-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "jylee-dba"
  }
}

# dbc 서브넷 생성
resource "aws_subnet" "jylee-dbc" {
  vpc_id     = aws_vpc.jylee-vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "jylee-dbc"
  }
}