# Create VPC
resource "aws_vpc" "tfvpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "contest-vpc"
  }
}

# Create public subnet
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.tfvpc.id
  cidr_block = var.publicsubnetcidr
  availability_zone = var.zone1

  tags = {
    Name = "contest-public-subnet1"
  }
}

resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.tfvpc.id
  cidr_block = var.private_cidr1
  availability_zone = var.zone1

  tags = {
    Name = "contest-private-subnet2"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.tfvpc.id
  cidr_block = var.private_cidr2
  availability_zone = var.zone2

  tags = {
    Name = "contest-private-subnet2"
  }
}