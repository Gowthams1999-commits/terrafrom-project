provider "aws" {
region = "us-east-1"
}

#VPC creation
resource "aws_vpc" "my_vpc" {

cidr_block = "10.0.0.0/16"

tags = {

Name = "test"

}
}

#Public subnet
resource "aws_subnet" "public_subnet" {

vpc_id = aws_vpc.my_vpc.id
cidr_block = "10.0.1.0/24"
availability_zone = "us-east-1a"

tags = {

Name = "public_subnet"

}

}


#Private subnet
resource "aws_subnet" "private_subnet" {

vpc_id = aws_vpc.my_vpc.id
cidr_block = "10.0.2.0/24"
availability_zone = "us-east-1a"

tags = {
Name = "private_subnet"
}
}

#internet Gateway
resource "aws_internet_gateway" "my-igw" {
vpc_id = aws_vpc.my_vpc.id

tags = {

Name = "my-igw"
}
}

#Route table
resource "aws_route_table" "my-test-rt" {
vpc_id = aws_vpc.my_vpc.id

route {
cidr_block = "0.0.0.0/0"
gateway_id = aws_internet_gateway.my-igw.id
}
}

#Associate route table with public subnet
resource "aws_route_table_association" "my-test-rt-public-subnet" {
route_table_id = aws_route_table.my-test-rt.id
subnet_id = aws_subnet.public_subnet.id
}

#Associate route table with private subnet
resource "aws_route_table_association" "my-test-rt-private-subnet" {
route_table_id = aws_route_table.my-test-rt.id
subnet_id = aws_subnet.private_subnet.id
}

#Create security group for managing inboud and outboud trrafic for your EC2 instance that is going to deploy in VPC
resource "aws_security_group" "my-sg" {
vpc_id = aws_vpc.my_vpc.id

ingress {
cidr_blocks = ["0.0.0.0/0"]
from_port = 22
to_port = 22
protocol = "tcp"
}

egress {
cidr_blocks = ["0.0.0.0/0"]
from_port = 0
to_port = 0
protocol = "tcp"
}

tags = {
Name = "my-sg"
}
}

output "vpc_id" {

value = aws_vpc.my_vpc.id
}

