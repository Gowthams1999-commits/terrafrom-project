provider "aws" {

region = "eu-north-1"

}

resource "aws_instance" "test-server" {

ami = var.ami_id
instance_type = var.instance_type == "true" ? "t3.small" : "t3.micro"
key_name = var.key_name
subnet_id = var.subnet_id

tags = {

Name = var.tags_name

}

}

