resource "aws_db_subnet_group" "jylee-dbsg" {
    name = "jylee-dbsg"
    subnet_ids = [aws_subnet.jylee-dba.id,aws_subnet.jylee-dbc.id]
}

resource "aws_db_instance" "jylee-db" {
    allocated_storage = 20
    storage_type = "gp2"
    engine = "mysql"
    engine_version = "8.0"
    instance_class = "db.t3.micro"
    db_name = "wordpress"
    identifier = "wordpress"
    username = "admin"
    password = "It12345!"
    availability_zone = "ap-northeast-2a"
    db_subnet_group_name = aws_db_subnet_group.jylee-dbsg.id
    vpc_security_group_ids = [aws_security_group.jylee-sg.id]
    skip_final_snapshot = true

    tags = {
        Name = "wordpress"
    }
}

# Replicas 만드는 법 고민해보기
