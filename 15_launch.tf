resource "aws_launch_template" "jylee_lantemp" {
    name = "jylee-lantemp"
    block_device_mappings {
        device_name = "/dev/sdf"
        ebs {
            volume_size = 10
            volume_type ="gp2"
        }
    }
    image_id = aws_ami_from_instance.jylee_ami.id
    instance_type = "t2.micro"
    key_name = "jylee-key"
    vpc_security_group_ids = [aws_security_group.jylee-sg.id]
    tag_specifications {
        resource_type = "instance"
        tags = {
            Name = "jylee-temp"
        }
    }
    user_data = filebase64("${path.module}/install.sh")
}