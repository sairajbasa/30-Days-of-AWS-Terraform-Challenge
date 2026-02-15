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

```

## 📘 Version Operators

Terraform uses version constraints to control which version of Terraform Core or Providers should be used.

| Operator | Meaning |
|----------|----------|
| `=`      | Exact version |
| `>=`     | Minimum version |
| `~>`     | Safe upgrade within the same major version |

## 🔹 5. Provider Initialization

Command:
```bash
terraform init
```


# What it does:

- Downloads required providers

- Creates .terraform directory

- Initializes backend

- Creates lock file

## 🔹 6. Example Resource – AWS VPC
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
```

## 🔹 7. Terraform Plan

Command:
```bash
terraform plan
```


## Purpose:

- Compares configuration with actual infrastructure

- Shows changes before applying

- Does NOT create resources

## Example Output Meaning:
```text
1 to add

0 to change

0 to destroy
```

## 📌 Key Takeaways

- Providers are required to interact with cloud platforms.

- Terraform Core and Providers are versioned independently.

- Always lock versions in production environments.

- terraform init prepares the working directory.

- terraform plan previews infrastructure changes safely.
