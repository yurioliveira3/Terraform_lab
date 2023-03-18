provider "aws" {
    region = "eu-west-2"
}

module "db" {
    source = "./db"
}

module "web" {
    source = "./web"
}

# DEFINE O IP PUBLICO
output "PrivateIP" {
    value = module.db.PrivateIP
}

# DEFINE O IP PUBLICO
output "PublicIP" {
    value = module.web.pub_ip
}