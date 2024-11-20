resource "aws_lb" "jylee-alb" {
    name = "jylee-alb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.jylee-sg.id]
    subnets = [aws_subnet.jylee-puba.id,aws_subnet.jylee-pubc.id]

    tags = {
        Name = "jylee-alb"
    }
}

output "dns_name" {
    value = aws_lb.jylee-alb.dns_name
}