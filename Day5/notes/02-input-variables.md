## Input Variables

Input variables allow values to be passed from outside Terraform.

Syntax:

variable "environment" {
  type    = string
  default = "dev"
}

Access:
var.environment

Ways to pass values:
- default value
- environment variable (TF_VAR_)
- terraform.tfvars
- *.auto.tfvars
- -var
- -var-file
