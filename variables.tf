variable "region" {
  type        = string
  default     = "eu-central-1"
  description = "AWS region"
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