# 🚀 Terraform AWS – Day 2

This repository contains my Day 2 learning from the **30 Days of AWS + Terraform Challenge**.

## 📚 Topic Covered
- Terraform Providers
- Terraform Core vs Provider
- Version Constraints
- Provider Initialization
- Resource Creation (VPC Example)
- Terraform Plan Execution

---

# 🧠 What I Learned

## 🔹 1. What is a Terraform Provider?

A **Terraform Provider** is a plugin that acts as a bridge between Terraform Core and cloud platforms like AWS.

- Terraform code is written in **HCL (HashiCorp Configuration Language)**.
- Cloud providers do not understand HCL directly.
- Providers translate Terraform configuration into API calls.

---

## 🔹 2. Terraform Core vs Provider

### Terraform Core
- Installed as a binary on the system
- Reads `.tf` files
- Creates execution plan
- Maintains state file
- Builds dependency graph

### Provider
- Plugin downloaded during `terraform init`
- Communicates with cloud APIs
- Creates, updates, and deletes resources

---

## 🔹 3. Types of Providers

- Official Providers  
- Partner Providers  
- Community Providers  

---

## 🔹 4. Versioning in Terraform

Terraform has two different versions:

- Terraform Core version
- Provider version

These are maintained separately.

### Example Configuration

```hcl
terraform {
  required_version = "~> 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}
