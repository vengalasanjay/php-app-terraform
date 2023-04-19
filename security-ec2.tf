# Create Security Group for ec2
resource "aws_security_group" "sg" {
  name_prefix = "tf-sg-"
  vpc_id = aws_vpc.tfvpc.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "contest-sg"
  }
}

