provider "aws" {
  region     = "${var.region}"
}

resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
}

resource "aws_internet_gateway" "vpc" {
  vpc_id     = "${aws_vpc.main.id}"
  
  tags = {
    Name = "main-IGW"
  }
}
