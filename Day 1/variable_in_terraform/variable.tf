variable "ami_id" {

  description = "This is ec2 instance ami ID"
  type        = string
  default     = "ami-0274f4b62b6ae3bd5"

}

### variable for instance type
variable "ec2_instance_type" {

  description = "This is Ec2 instance type"
  type        = string
  default     = "t3.micro"

}

### tags for ec2 instance
variable "ec2_tags" {

  description = "This is Ec2 instance tags"
  type        = string
  default     = "production server"

}
