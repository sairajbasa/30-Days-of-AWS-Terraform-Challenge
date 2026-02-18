## Local Variables

Locals are internal variables used inside Terraform.

Syntax:

locals {
  env       = var.environment
  app_name = "wordpress"
  full_name = "${local.app_name}-${local.env}"
}

Access:
local.full_name

Key Points:
- Cannot be overridden from outside
- Used for reuse and calculations
- Improves readability
