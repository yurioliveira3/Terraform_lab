provider "aws" {
    region = "us-east-1"
}

resource "aws_db_instance" "myRDS" {
    db_name = "myDB"
    identifier = "my-first-rds"
    instance_class = "db.t2.micro"
    engine = "mariadb"
    engine_version = "10.2.21"
    username = ""
    password = ""
    port = 3306
    allocated_storage = 20 #GB
    skip_final_snapshot = true #snap quando deletado
}