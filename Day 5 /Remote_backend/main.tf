provider "aws" {

region = "us-east-1"

}

#Bucket or S3
resource "aws_s3_bucket" "remote_backend_s3" {

bucket = "gow1999-bucket"

tags = {

Name = "gow1999-bucket"

}
}

#DynamoDB
resource "aws_dynamodb_table" "terraform_lock" {
  name             = "terraform_lock"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}
