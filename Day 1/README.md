# What is Terraform?
Terraform is an open-source Infrastructure as Code (IaC) tool developed by HashiCorp. It allows you to define, provision, and manage infrastructure using a declarative configuration language called HashiCorp Configuration Language (HCL).

In simpler terms, Terraform helps you automate and manage your cloud infrastructure (such as servers, networks, and databases) by writing code instead of manually configuring it via a user interface.

You can use Terraform to interact with different cloud providers (AWS, Azure, GCP, etc.), on-premises infrastructure, and even third-party services (like DNS or monitoring tools) via a plugin-based architecture.

## Terraform installation:

Follow Terraform official documention to install terraform

## AWS CLI installation:

Follow AWS decumentation to install AWS CLI and Configure AWS CLI to access aws resources.

## Create EC2 instance using terrform.

**⚡ Summary (Most Commonly Used in Daily Work)

terraform init → initialize

terraform fmt → format code

terraform validate → check syntax

terraform plan → preview changes

terraform apply → create/update resources

terraform destroy → delete resources**

terraform show -> show terraform.tfstate in human readable format

terraform state list --> list resources in terraform state file

terraform output --> list output values

🔹 What is a terraform Block?

The terraform block is a special top-level block in a Terraform configuration.
It defines settings that control how Terraform itself behaves, such as:

Which Terraform version is required

Which provider plugins to use

Where to store the state (backend configuration)

It is not about resources (like EC2, S3, etc.), but about Terraform itself.
terraform state rm <resource> --> remove specify resources

Example :

terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.45.0"
    }
  }

  backend "s3" {
    bucket = "my-terraform-state"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
  }
}

Note: Only constents only store in terraform block. Resources,input and output variable not allowed in terraform block
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



