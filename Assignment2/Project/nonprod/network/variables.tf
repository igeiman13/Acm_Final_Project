# Default tags
variable "default_tags" {
  default = {
    "Owner" = "group7",
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags for all AWS resources"
}

# Name prefix
variable "prefix" {
  type        = string
  default     = "project"
  description = "provides Name prefix"
}

# Provision public subnets in custom VPC
variable "public_subnet_cidrs" {
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs blocks"
}

# Provision provate subnets in custom VPC
variable "private_subnet_cidr" {
  default     = ["10.1.3.0/24", "10.1.4.0/24"]
  type        = list(string)
  description = "Private Subnet CIDRs blocks"
}

# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.1.0.0/16"
  type        = string
  description = "VPC to host static web sites"
}

# Variable to signal the current environment 
variable "env" {
  default     = "nonprod"
  type        = string
  description = "Deployment Environment"
}

