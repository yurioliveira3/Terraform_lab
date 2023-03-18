provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = " "
    instance_type = "t2.micro"
}

resource "aws_eip" "elasticeip"{
    instance = aws_instance.ec2.id
}

output "EIP" {
    value = aws_eip.elasticeip.public_ip
}