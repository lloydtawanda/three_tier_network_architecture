###############################################
# VPC for 3 tier application
# ############################################### 


module three_tier {
    source  = "../module"
    
    three_tier_vpc = var.three_tier_vpc  
    three_tier_igw = var.three_tier_igw
    three_tier_route_table = var.three_tier_route_table
    three_tier_vpc_cidr = var.three_tier_vpc_cidr
    three_tier_pub_subnet_az_map = var.three_tier_pub_subnet_az_map
    three_tier_pvt_subnet_az_map = var.three_tier_pvt_subnet_az_map
    tags = var.tags

}