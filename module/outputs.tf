#################################################################
# Three Tier VPC Network Outputs
#################################################################
output "vpc_id"{
    value = aws_vpc.main_vpc.id
}

output "public_subnet_ids"{
    value = [
        for subnet in aws_subnet.public_subnet:
        subnet.id
    ]
}

output "private_subnet_ids"{
    value = [
        for subnet in aws_subnet.private_subnet:
        subnet.id
    ]
}

output "igw_id"{
    value = aws_internet_gateway.main_igw.id
}

output "route_table_id"{
    value = aws_route_table.public_subnet_route.id
}