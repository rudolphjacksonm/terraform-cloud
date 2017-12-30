resource "aws_subnet" "public" {
    count = 3
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${element(var.public_subnets, count.index)}"
    availability_zone = "${var.regions[0]}${element(var.availability_zones, count.index)}"

    tags = {
        Name = "public-1${element(var.availability_zones, count.index)}"
    }
}

resource "aws_subnet" "private" {
    count = 3
    vpc_id = "${aws_vpc.main.id}"
    cidr_block = "${element(var.private_subnets, count.index)}"
    availability_zone = "${var.regions[0]}${element(var.availability_zones, count.index)}"

    tags = {
        Name = "private-1${element(var.availability_zones, count.index)}"
    }
}