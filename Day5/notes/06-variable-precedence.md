## Variable Precedence (Low → High)

1. Default value
2. Environment variables (TF_VAR_)
3. terraform.tfvars
4. *.auto.tfvars
5. -var
6. -var-file

Highest precedence value is always used.

Example:
terraform apply -var="environment=prod"
