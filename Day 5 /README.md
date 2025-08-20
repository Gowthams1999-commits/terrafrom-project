# Terraform state file and Remote backend.

## Create a bucket and dynamdb for remote backend and enable state lock

## in Terraform version 1.10.X we can avoid dynamdb for enable state lock instead we can use use_lockfile = true parameters.

## what is differente between -migrate-state and reconfigure.

🔹 1. -migrate-state

👉 Purpose: Moves your existing state from the old backend to the new backend.

Example:

Initially, your state is local (terraform.tfstate file).

You change backend config to S3.

Run:

terraform init -migrate-state

Terraform will upload your existing state file into the new backend (S3).

This way you don’t lose your infrastructure state.

✅ Use when:

You are switching from local → remote backend.

Or moving from one remote backend → another.

🔹 2. terraform init -reconfigure

👉 Meaning: Forget old backend settings and use the new ones, but don’t move state.

Example:

You already use an S3 backend:

backend "s3" {
  bucket = "my-terraform-state"
  key    = "prod/terraform.tfstate"
  region = "us-east-1"
}


Now, you change bucket name or region:

backend "s3" {
  bucket = "new-terraform-state"
  key    = "prod/terraform.tfstate"
  region = "us-east-1"
}


Run:

terraform init -reconfigure


Terraform will reinitialize backend with the new config.

It does not move old state automatically (you must handle that if needed).

✅ Use when backend configuration changed (like new bucket, credentials, or reg

