# First Create S3 bucket to store terraform.tfstate file to helps prevent simultaneous modifications of the state file by different users or processes.

# Create DynamoDB for enable terraform.tfstate file lock for avoid conflict issues.

# Create terraform backend block and provide necessary configuration to create a Remote backend.
