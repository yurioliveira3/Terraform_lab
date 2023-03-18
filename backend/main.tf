provider "aws" {
    region = "eu-west-2"
}

resource "aws_vpc" "test" {
    cidr_block = ""
}