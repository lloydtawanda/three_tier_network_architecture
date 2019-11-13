provider_profile = "default"
aws_region = "eu-west-1"
three_tier_vpc = "threeTierVPC"
three_tier_igw = "threeTierIGW"
three_tier_route_table = "threeTierPublicRouteTable"
three_tier_vpc_cidr = "10.0.0.0/16"

three_tier_pub_subnet_az_map = {
    "10.0.0.0/28" = "eu-west-1a",
    "10.0.0.16/28" = "eu-west-1a",
    "10.0.0.32/28" = "eu-west-1a"
}

three_tier_pvt_subnet_az_map = {
    "10.0.0.48/28" = "eu-west-1b",
    "10.0.0.64/28" = "eu-west-1b",
    "10.0.0.80/28" = "eu-west-1b",
    "10.0.0.96/28" = "eu-west-1c",
    "10.0.0.112/28" = "eu-west-1c",
    "10.0.0.128/28" = "eu-west-1c"
}
tags = {
    ENVIRONMENT = "threeTierDEV"
}