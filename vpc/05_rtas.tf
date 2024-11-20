resource "aws_route_table_association" "jylee-rtas_puba" {
  subnet_id      = aws_subnet.jylee-puba.id
  route_table_id = aws_route_table.jylee-rt.id
}

resource "aws_route_table_association" "jylee-rtas_pubc" {
  subnet_id      = aws_subnet.jylee-pubc.id
  route_table_id = aws_route_table.jylee-rt.id
}
