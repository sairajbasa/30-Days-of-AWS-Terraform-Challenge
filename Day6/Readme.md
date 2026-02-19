# Day 6 – Terraform File Structure and Best Practices

## Overview
This lab covers **Terraform project organization** and best practices for structuring files.  
The goal is to make Terraform code **readable, maintainable, and secure** as projects grow.

## Key Concepts
- **main.tf** – Define all resources (S3, VPC, EC2, etc.).
- **variables.tf** – Store input variables separately.
- **outputs.tf** – Store outputs separately.
- **providers.tf** – Define provider configurations.
- **backend.tf** – Configure remote backend (e.g., S3 for state files).
- **locals.tf** – Store local values.
- **terraform.tfvars** – Environment-specific variable values.
- **terraform.tfvars.example** – Template for variable values (safe to publish).

### Git Ignore
Sensitive and unnecessary files are ignored using `.gitignore`:
```text
*.tfstate
.tfstate.
*.backup
.terraform/
crash.log
override.tf
override.tf.json
*.tfvars
```
