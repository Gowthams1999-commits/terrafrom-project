# VPC Creation using Terraform
## Step 1: Create a VPC
Define the VPC using a CIDR block (e.g., 10.0.0.0/16).
Required Items:
CIDR Block: 10.0.0.0/16

## Step 2: Create Public and Private Subnets
Create public and private subnets within your VPC to deploy EC2 instances.
Required Items for Subnets:
VPC ID
CIDR Blocks (e.g., 10.0.1.0/24 for public and 10.0.2.0/24 for private)
Availability Zones (AZs)
Tags

## Step 3: Create an Internet Gateway
Create an Internet Gateway (IGW) and attach it to your VPC to allow internet access.
Required Items:
VPC ID
Tags

## Step 4: Create a Route Table
Create a route table for routing traffic to subnets, including routes for internet access.
Required Items:
VPC ID
Route (e.g., Destination = "0.0.0.0/0", Target = "internet-gw")
Tags

## Step 5: Associate Route Table with Subnets
Associate the route table with both public and private subnets.
Required Items:
Route Table ID
Subnet ID for both public and private subnets

## Step 6: Create Security Group for EC2 Instance
Create a security group for your EC2 instance, adding inbound and outbound rules.
Required Items:
VPC ID
Inbound Rule (Ingress): (e.g., allow SSH/HTTP)
Outbound Rule (Egress): (e.g., allow all traffic or restrict as needed)
