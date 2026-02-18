locals {
  project_name = "terraform-demo"
  full_name    = "${local.project_name}-${var.environment}"
}
