resource "aws_db_instance" "small_rds" {
  identifier              = "raj-small-rds"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  storage_type            = "gp2"

  username                = var.username
  password                = "Admin@1234"

  publicly_accessible     = true
  skip_final_snapshot     = true
  deletion_protection     = false

  db_name                 = "tf-db"
}

variable "username" {
   type = string
   default = "admin"
   sensitive = true
}