provider "aws" {

region = "us-east-1"

}




module "ec2" {
source = "./test"
ami_id = "ami-04b4f1a9cf54c11d0"
instance_type = "t2.micro"
subnet_id = "subnet-02ba24b342296d354"
}

output "public_ip_ec2" {

value = module.ec2.public_ip

}
