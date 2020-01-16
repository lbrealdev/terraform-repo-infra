output "vpc" {
  value       = aws_vpc.tfb.id
}

output "subnet_public" {
  value       = aws_subnet.public.cidr_block
}

#output "bastion" {
#  value       = aws_instance.ec2.id 
#  description = "EC2 id"
#}