# SERVIDOR WEB
resource "aws_instance" "web" {
    ami = " "
    instance_type = "t2.micro"
    security_groups = [module.sg.sg_name]
    user_data = file("${path.module}/server-script.sh") #SCRIPT QUE IRÁ RODAR NO SERVER
    tags = {
        Name = "Web Server"
    }
}

output "pub_ip" {
    value = module.eip.PublicIP
}

module "eip" {
    source = "./eip"
    instance_id = aws_instance.web.id
}

module "sg" {
    source = "./sg"
}