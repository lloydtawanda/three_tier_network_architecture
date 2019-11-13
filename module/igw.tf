resource "aws_internet_gateway" "main_igw" {
    vpc_id = aws_vpc.main_vpc.id

    tags = "${merge(
        var.tags,
            map(
            "Name",  "${var.three_tier_igw}"
            )
    )}"
}