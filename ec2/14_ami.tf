resource "aws_ami_from_instance" "jylee_ami" {
    name = "jylee-ami"
    source_instance_id = aws_instance.jylee-weba.id
    depends_on = [ aws_instance.jylee-weba ] # 괄호 내 작업을 먼저 수행하고 실행
}