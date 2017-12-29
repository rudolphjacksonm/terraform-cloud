provider "aws" {
  region     = "${var.region}"
}

resource "aws_vpc" "main" {
  cidr_block = "${var.vpc_cidr}"
}

resource "aws_subnet" "public-1a" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-1a"
}

resource "aws_subnet" "public-1b" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-1b"
}

resource "aws_subnet" "public-1c" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-west-1c"
}

resource "aws_subnet" "private-1a" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.4.0/24"
  availability_zone = "eu-west-1a"
}

resource "aws_subnet" "private-1b" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.5.0/24"
  availability_zone = "eu-west-1b"
}

resource "aws_subnet" "private-1c" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.6.0/24"
  availability_zone = "eu-west-1c"
}