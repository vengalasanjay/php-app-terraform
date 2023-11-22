# Create Security Group for rds
resource "aws_security_group" "sgrds" {
  name_prefix = "tf-sgrds-"
  vpc_id = aws_vpc.tfvpc.id
  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = [aws_instance.instance.public_ip]
     
      }

  tags = {
    Name = "contest-sgrds"
  }
}############################3
