terraform {
backend "s3" {
bucket = "gow1999-bucket"
key = "gow/teraform.tfstate"
region = "us-east-1"
encrypt = "true"
dynamodb_table = "terraform_lock"
}
}
