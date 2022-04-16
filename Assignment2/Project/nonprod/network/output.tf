output "public_subnet_ids" {
  value = module.vpc-nonprod.public_subnet_ids
}

output "vpc_id" {
  value = module.vpc-nonprod.vpc_id
}


output "private_subnet_ids" {
  value = module.vpc-nonprod.private_subnet_id
}


output "route_table_id" {
  value = module.vpc-nonprod.route_table_id
}