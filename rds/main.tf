provider "aws" {
    profile=var.profile
    region  = "eu-west-1"

}

resource "aws_db_instance" "default" {
    allocated_storage=20
    engine      = "mysql"
    engine_version       = "5.7"
    instance_class = "db.t2.micro"
    name = "stamps_db"
    username = "admin"
    password = var.password
    identifier = var.id
    //vpc_security_group_ids = [aws_db_security_group.aurora-sg.id]
    skip_final_snapshot = true
    multi_az = true
    parameter_group_name = "default.mysql5.7"
   
    publicly_accessible= true
}

/*resource "aws_db_security_group" "aurora-sg" {
  name = "rds_sg"

  ingress {
    cidr = "10.0.0.0/24"
  }
}*/
