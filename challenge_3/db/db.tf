# CRIAÇÃO DA INSTÂNCIA DE BD
resource "aws_instance" "db" {
    ami = " "
    instance_type = "t2.micro"

    tags = {
        Name = "DB Server"
    }
}

output "PrivateIP" {
    value = aws_instance.db.private_ip
}
