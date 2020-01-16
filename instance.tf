resource "aws_instance" "ec2" { 
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address
  key_name = "testkey"
  subnet_id = aws_subnet.public.id
  tags = {
      Name = "bastion"
  }
}