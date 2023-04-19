# creating subnet group for database 
resource "aws_db_subnet_group" "subgrprds" {
  name       = "main"
  subnet_ids = [aws_subnet.private_subnet1.id, aws_subnet.private_subnet2.id]

  tags = {
    Name = "My DB subnet group"
  }
}