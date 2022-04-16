# Instance type
variable "instance_type" {
  default = {
    "prod"    = "t2.micro"
    "nonprod" = "t2.micro"
  }
  description = "Types of the instance"
  type        = map(string)
}

# Variable to signal the current environment 
variable "env" {
  default     = "nonprod"
  type        = string
  description = "Deployment Environment"
}

variable "ec2_count" {
  type    = number
  default = "2"
}



variable "my_private_ip" {
  type        = string
  default     = "172.31.43.189"
  description = "Private IP of my Cloud 9 station to be opened in bastion ingress file"
}

# curl http://169.254.169.254/latest/meta-data/public-ipv4
variable "my_public_ip" {
  type        = string
  default     = "54.211.83.92"
  description = "Public IP of my Cloud 9 station to be opened in bastion ingress file"
}
