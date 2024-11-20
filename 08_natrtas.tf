resource "aws_route_table_association" "jylee-natrtas_pria" {
  subnet_id      = aws_subnet.jylee-pria.id
  route_table_id = aws_route_table.jylee-natrt.id
}

resource "aws_route_table_association" "jylee-natrtas_pric" {
  subnet_id      = aws_subnet.jylee-pric.id
  route_table_id = aws_route_table.jylee-natrt.id
}

resource "aws_route_table_association" "jylee-natrtas_dba" {
  subnet_id      = aws_subnet.jylee-dba.id
  route_table_id = aws_route_table.jylee-natrt.id
}

resource "aws_route_table_association" "jylee-natrtas_dbc" {
  subnet_id      = aws_subnet.jylee-dbc.id
  route_table_id = aws_route_table.jylee-natrt.id
}