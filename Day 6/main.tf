provider "aws" {

  region = "eu-north-1"

}


# variable for ami

variable "ec2_ami" {

  type = string

}

# variable for instance type

variable "instance_type" {

  type = map(string)


  default = {


    dev   = "t3.micro"
    stage = "t3.small"
    prod  = "t3.large"


  }

}


# variable for key value pair
variable "key_value_pair" {

  type = string

}

# variable for tags

variable "tags_name" {

  type = string

}

#moduels for ec2 instance creation

module "ec2_instance_creation" {

  source         = "./modules/ec2"
  ec2_ami        = var.ec2_ami
  instance_type  = lookup(var.instance_type, terraform.workspace, "t3.micro")
  key_value_pair = var.key_value_pair
  tags_name      = var.tags_name





}
