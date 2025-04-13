provider "aws" {

  region = "eu-north-1"

}


resource "aws_instance" "test" {


  ami           = var.ami_id
  instance_type = var.ec2_instance_type
  key_name      = "my-ec2"

  tags = {

    name = "var.ec2_tags"

  }
}
