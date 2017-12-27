provider "aws" {
  region     = "eu-west-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0fac5276"
  instance_type = "t2.micro"
}