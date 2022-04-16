# Module to deploy basic networking 
module "vpc-nonprod" {
  source = "../../../modules/aws_network"
  #source              = "git@github.com:igeiman/aws_network.git"
  env                = var.env
  vpc_cidr           = var.vpc_cidr
  public_cidr_blocks = var.public_subnet_cidrs
  private_cidr_block = var.private_subnet_cidr
  prefix             = var.prefix
  default_tags       = var.default_tags
}