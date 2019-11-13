variable "provider_profile" {
    type = string
}

variable "aws_region" {
    type = string
}

variable "three_tier_vpc" {
    type  =  string
}

variable "three_tier_igw" {
    type  =  string
}

variable "three_tier_route_table" {
    type  =  string
}

variable "three_tier_vpc_cidr" {
    type  =  string
}

variable "three_tier_pub_subnet_az_map" {
    type = map(string)
}

variable "three_tier_pvt_subnet_az_map" {
    type = map(string)
}

variable "tags" {
    type = map(string)
}