# What is Terraform?
Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows you to define, provision, and manage infrastructure using a declarative configuration language called HashiCorp Configuration Language (HCL).

In simpler terms, Terraform helps you automate and manage your cloud infrastructure (such as servers, networks, and databases) by writing code instead of manually configuring it via a user interface.

You can use Terraform to interact with different cloud providers (AWS, Azure, GCP, etc.), on-premises infrastructure, and even third-party services (like DNS or monitoring tools) via a plugin-based architecture.

## Terraform installation:

Follow Terraform official documention to install terraform

## AWS CLI installation:

Follow AWS decumentation to install AWS CLI and Configure AWS CLI to access aws resources.

## Create EC2 instance using terrform.

### Below are required components to create resource ( infrastructure )

1. ami ( Amazon Image )

2. Instance type ( ex: t2.micro,t3.large etc)

3. Key pair name

4. Subnet ID ( Deploy my Ec2 instance in inside VPC )

5. Security Group ( Need to create and allow required inbound & Outbound access )

## What is veriable in teraform.

Variable is use to store values and pass values in coniguration file of terraform template when required.

to Create a variable you can create a file called variable.tf and define below arguments.

1. description
2. Type
3. default



