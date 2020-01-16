variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "AWS region"
}

variable "destination_cidr_block" {
  type        = string
  default     = "0.0.0.0/0"
  description = "Destination cidr_block"
}

variable "name" {
  type        = string
  default     = "testlb01s"
  description = "The name of the VPC."
}

variable "cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "The CIDR of the VPC."
}

variable "public_subnet" {
  type        = string
  default     = "10.0.1.0/24"
  description = "The public subnet to create."
}

variable "enable_dns_hostnames" {
  type        = bool
  default     = true
  description = "Resolve names dns in VPC"
}

variable "enable_dns_support" {
  type        = bool
  default     = true
  description = "Support DNS in VPC"
}

variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  type        = bool
  default     = true
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Type instance EC2"
}

variable "associate_public_ip_address" {
  type        = bool
  default     = true
  description = "Enable IP public"
}

variable "domain_name" {
  type        = string
  default     = "www.lbgc.io"
  description = "Domain name"
}

variable "validation_method" {
  type        = string
  default     = "DNS"
  description = "Method validation DNS"
}

variable "lb_arn" {
  type    = string
  default = "arn:aws:elasticloadbalancing:eu-central-XXXXXXXX"
}

variable "lb_name" {
  type    = string
  default = "front"
}