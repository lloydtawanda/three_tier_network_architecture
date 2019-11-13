resource "aws_route_table" "public_subnet_route" {

    vpc_id = aws_vpc.main_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.main_igw.id
    }
 
    tags = "${merge(
        var.tags,
            map(
            "Name",  "${var.three_tier_route_table}"
            )
    )}"

}

# Associate the routing table to public subnet
resource "aws_route_table_association" "public_subnet_route_assoc" {
    for_each = aws_subnet.public_subnet
    subnet_id = aws_subnet.public_subnet[each.key].id
    route_table_id = aws_route_table.public_subnet_route.id
}