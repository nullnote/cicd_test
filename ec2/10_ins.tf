resource "aws_instance" "jylee-weba" {
  ami                         = "ami-0ee82191e264e07cc"
  instance_type               = "t2.micro"
  key_name                    = "jylee-key"
  vpc_security_group_ids      = [aws_security_group.jylee-sg.id]
  availability_zone           = "ap-northeast-2a"
  private_ip                  = "10.0.0.11"
  subnet_id                   = aws_subnet.jylee-puba.id
  associate_public_ip_address = true
  user_data = file("./install.sh")

  tags = {
    Name = "jylee-weba"
  }
}

output "public_ip" {
  value = aws_instance.jylee-weba.public_ip
}
