🌍 Terraform Workspaces
Terraform Workspaces allow you to manage resources across multiple environments (like dev, stage, and prod) using the same Terraform configuration.

Each workspace maintains its own separate terraform.tfstate file, ensuring that infrastructure state for one environment doesn't override or affect another.

🔧 Workspace Commands
Use the following commands to create workspaces for different environments:


terraform workspace new dev     # Creates 'dev' workspace
terraform workspace new stage   # Creates 'stage' workspace
terraform workspace new prod    # Creates 'prod' workspace
These workspaces will store their respective state files in:



.terraform/terraform.tfstate.d/<workspace-name>/terraform.tfstate


🔄 Switching Between Workspaces
To switch between environments, use:

terraform workspace select dev
terraform workspace select stage
terraform workspace select prod


To check your current workspace:

terraform workspace show
📦 Basic Terraform Commands

### Command	Description
1. terraform init	Initializes the Terraform working directory. Downloads providers and sets up backend.
2. terraform fmt	Formats the code for readability and consistency.
3. terraform validate	Checks whether your configuration is syntactically valid.
4. terraform plan	Shows a preview of changes that will be applied. A dry run.
5. terraform apply	Applies the changes to reach the desired state (creates/modifies/destroys resources).
