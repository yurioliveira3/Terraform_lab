provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "ec2" {
    ami = " "
    instance_type = "t2.micro"
    count = 3
}