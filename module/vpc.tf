resource "aws_vpc" "main_vpc" {
  cidr_block = var.three_tier_vpc_cidr
  tags = "${merge(
   var.tags,
    map(
      "Name", "${var.three_tier_vpc}" 
    )
  )}"
}