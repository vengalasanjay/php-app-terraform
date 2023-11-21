################## Create EC2 instance
resource "aws_instance" "instance" {
  ami = "ami-04581fbf744a7d11f"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = "key"
  associate_public_ip_address = true
  
  tags = {
    Name = "biryani-contest"
  }

    provisioner "remote-exec" {
    inline = [
   " echo  'wait until ssh is ready' "
    ]
    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file ( local.key_path )
      host = aws_instance.instance.public_ip

       }

       }
   provisioner "local-exec" {
    command = "ansible-playbook -i ${aws_instance.instance.public_ip}, --private-key  ${ local.key_path } ansible1.yaml"
  }

}
