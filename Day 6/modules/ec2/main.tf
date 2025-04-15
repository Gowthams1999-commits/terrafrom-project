provider "aws" {



region = "eu-north-1"

}

resource "aws_instance" "workspace_test_ec2" {


ami = var.ec2_ami
instance_type = var.instance_type
key_name = var.key_value_pair

tags = {

Name = var.tags_name

}
}
