resource "aws_autoscaling_attachment" "jylee-autosgatt" {
    autoscaling_group_name = aws_autoscaling_group.jylee-asg.id
    lb_target_group_arn = aws_lb_target_group.jylee-albtg.arn
}