# Create Route Table
resource "aws_route_table" "tfrt" {
  vpc_id = aws_vpc.tfvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "contest-pub-rt"
  }
}
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.tfvpc.id
  route {
  
  }
  tags = {
    Name = "contest-private-rt"
  }
}

# Create route table association
resource "aws_route_table_association" "publisubrt1as"{
  subnet_id  = aws_subnet.public.id
  route_table_id = aws_route_table.tfrt.id
}

resource "aws_route_table_association" "publisubrt2as"{
  subnet_id  = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.tfrt.id
}
resource "aws_route_table_association" "privatesubrt1as" {
  subnet_id = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_rt.id
}