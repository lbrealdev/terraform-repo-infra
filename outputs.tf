output "vpc" {
  value       = aws_vpc.tfb.id
}

output "subnet_public" {
  value       = aws_subnet.public.cidr_block
}