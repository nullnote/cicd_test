# VPC 생성
resource "aws_vpc" "jylee-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "jylee-vpc"
  }
}

