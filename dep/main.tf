provider "aws" {
    region = "eu-west-2"
}

resource "aws_instance" "db" {
    ami = " "
    instance_type = "t2.micro"
}

resource "aws_instance" "web" {
    ami = " "
    instance_type = "t2.micro"

    depends_on = [aws_instance.db]
}