provider "aws" {
    region = "us-east-1"
}

variable "ingressrules" {
    type = list(number)
    default = [80,443]
}

variable "egressrules" {
    type = list(number)
    default = [80,443,25,3306,53,800]
}

resource "aws_instance" "ec2" {
    ami = " "
    instance_type = "t2.micro"
    security_groups = [aws_security_group.webtraffic.name]
}

resource "aws_security_group" "webtraffic" {
    name = "Allow Dynamica HTTPS"

    # INBOUND
    dynamic "ingress" { # ALLOW TRAFIC IN 
        iterator = port
        for_each = var.ingressrules # Faz um for na variável, aplicando as regras do content
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    #OUTBOUND
    dynamic "egress" { # ALLOW TRAFIC IN 
        iterator = port
        for_each = var.egressrules
        content {
            from_port = port.value
            to_port = port.value
            protocol = "TCP"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
}
