resource "aws_autoscaling_group" "jylee-asg" {
    name = "jylee-asg"
    min_size = 1
    max_size = 6
    desired_capacity = 1
    health_check_grace_period = 60
    health_check_type = "EC2"
    force_delete = false
    vpc_zone_identifier = [aws_subnet.jylee-puba.id,aws_subnet.jylee-pubc.id]
    launch_template {
      id = aws_launch_template.jylee_lantemp.id
      version = "$Latest"
    }
}