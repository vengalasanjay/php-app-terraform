# create rds
resource "aws_db_instance" "projectrds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0.32"
  instance_class       = "db.t3.micro"
  username             = var.rdsusername
  password             = var.rdspasswd
  parameter_group_name = "default.mysql8.0"
  db_name              = var.databasename
  identifier           = var.identifier
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.subgrprds.id
  vpc_security_group_ids = [aws_security_group.sgrds.id]
  
}