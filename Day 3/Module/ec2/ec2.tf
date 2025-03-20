variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for deploying EC2 instance"
  type        = string
}

# Step 3: Deploy EC2 instance using the generated SSH key
resource "aws_instance" "gow-testing" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}

output "public_ip" {

description = "public ip for your ec2 instance"
value = aws_instance.gow-testing.public_ip

}
