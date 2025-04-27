terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Default provider (e.g., us-east-1)
provider "aws" {
  alias  = "use1"
  region = "us-east-1"
}

# Second provider (e.g., us-west-2)
provider "aws" {
  alias  = "usw2"
  region = "us-west-2"
}

# Resource using us-east-1
resource "aws_s3_bucket" "bucket_use1" {
  provider = aws.use1
  bucket   = "my-multi-region-bucket-use1"
}

# Resource using us-west-2
resource "aws_s3_bucket" "bucket_usw2" {
  provider = aws.usw2
  bucket   = "my-multi-region-bucket-usw2"
}
