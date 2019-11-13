// Subnets for presentation layer
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.main_vpc.id

  map_public_ip_on_launch = true

  for_each = var.three_tier_pub_subnet_az_map
  
  cidr_block = each.key

  availability_zone = each.value

  tags = "${merge(
   var.tags,
    map(
      "Name",  "Public Subnet : ${each.key}"
    )
  )}"
}

// Subnets for application and data layers
resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.main_vpc.id

  for_each = var.three_tier_pvt_subnet_az_map

  cidr_block = each.key
  
  availability_zone = each.value

  tags = "${merge(
   var.tags,
    map(
      "Name",  "Private Subnet : ${each.key}"
    )
  )}"
}
