resource "aws_db_instance" "i-mysql" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}

output "db_instance_endpoint" {
  value = aws_db_instance.i-mysql.endpoint
}

output "status" {
  value = aws_db_instance.i-mysql.status
}