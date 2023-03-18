provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = " "
    instance_type = "t2.micro"
    security_groups = [aws_security_group.webtraffic.name]
}

resource "aws_security_group" "webtraffic" {
    name = "Allow HTTPS"

    # INBOUND
    ingress { # ALLOW TRAFIC IN 
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    #OUTBOUND
    egress { # ALLOW TRAFIC OUT
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
