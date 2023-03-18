# Provider e Região
provider "aws" {
  region = "us-east-1"
}

# Nome do VPC
variable "vpcname" {
  type    = string
  default = "TerraformVPC"
}

resource "aws_vpc" "TerraformVPC" {
  cidr_block = ""

  tags = {
    Name = var.vpcname  # Utilizando a variável inputname
  }
}