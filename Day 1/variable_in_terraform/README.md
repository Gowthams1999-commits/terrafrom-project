# What is a Variable in Terraform?
A variable in Terraform allows you to parameterize your code so it's more flexible, reusable, and clean.

Instead of hardcoding values (like AMIs, instance types, regions, etc.), you use variables and pass values dynamically.

## variable Skeleton

variable "variable_name" {
  description = "What this variable is for"
  type        = string        # or number, bool, list, map, etc.
  default     = "some value"  # optional
}

