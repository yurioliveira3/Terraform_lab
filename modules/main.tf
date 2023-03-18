provider "aws" {
    region = "us-east-1"
}

module "ec2module" {
    source = "./ec2"
    ec2name = "Name From Module˜"
}

#Criação de um output acessando o id do módulo
output "module_output" {
    value = module.ec2module.instance_id
}