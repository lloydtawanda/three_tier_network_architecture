#################################################################
# Three Tier VPC Network Outputs
#################################################################
output "vpc_id"{
    value = module.three_tier.vpc_id
}

output "public_subnet_ids"{
    value = module.three_tier.public_subnet_ids
}

output "private_subnet_ids"{
    value = module.three_tier.private_subnet_ids
}

output "igw_id"{
    value = module.three_tier.igw_id
}

output "route_table_id"{
    value = module.three_tier.route_table_id
}