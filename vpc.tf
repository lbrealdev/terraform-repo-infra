resource "aws_vpc" "tfb" {     # Create VPC
  cidr_block = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  tags = {
    Name = var.name
  }
}

resource "aws_internet_gateway" "tfb" {   # Create IGW
  vpc_id = aws_vpc.tfb.id
  tags = {
    Name = "igw-test01s"
  }
}

resource "aws_route" "internet_acess" {   # Attach Route table in IGW
  route_table_id = aws_vpc.tfb.main_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.tfb.id
}

resource "aws_subnet" "public" {     # Create public subnet
  vpc_id = aws_vpc.tfb.id
  cidr_block = var.public_subnet
  map_public_ip_on_launch = var.map_public_ip_on_launch
  tags = {
    Name = "test01s-public"  
  }
}