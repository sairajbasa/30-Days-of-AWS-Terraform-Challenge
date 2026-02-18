## Output Variables

Outputs display values after terraform apply.

Syntax:

output "vpc_id" {
  value = aws_vpc.sample.id
}

Usage:
- Show important values
- Share data between modules
- Debugging

Command:
terraform output
