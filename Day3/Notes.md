# Day 03 – Terraform Resource Creation (S3 Bucket)

## 📌 Overview

On Day 03 of the **30 Days of AWS + Terraform challenge**, the trainer focused on **resource provisioning using Terraform**.

Until now, the learning covered:
- What Terraform is and why it is used
- Infrastructure as Code concepts
- Providers and their role
- Writing a basic Terraform configuration file

This session marked the transition from understanding providers to **creating real AWS resources**.

---

## 🪣 Resource Provisioning with Terraform

The primary objective of this session was to provision an **AWS S3 bucket** using Terraform.

Instead of creating resources manually in the AWS Console, the trainer explained how a DevOps engineer defines infrastructure in a `.tf` file. Terraform then interacts with AWS APIs to create and manage the resources.

The S3 bucket was chosen because it is:
- Simple to understand
- A good first example of resource creation
- Helpful for learning Terraform syntax and structure

---

## 📖 Importance of Terraform Documentation

The trainer emphasized:
- Relying on official Terraform documentation
- Understanding mandatory and optional arguments
- Writing meaningful resource names for internal references

This builds a strong foundation for working on larger and more complex projects later.

---

## 🏷️ S3 Bucket Naming & Tags

High-level concepts discussed:
- **S3 bucket names must be unique across all AWS regions**
- Tags are used to organize and identify resources
- Terraform supports different data types like strings and maps
- Beginners should focus on understanding structure rather than memorizing everything

---

## 🔄 Terraform Change Detection & State File

A key concept explained was how Terraform detects changes:

- Terraform compares:
  - Terraform configuration
  - Actual AWS infrastructure
  - **Terraform state file (`tf.statefile`)**

- When Terraform shows **“1 to change”**, it means:
  - **One existing resource needs to be updated**
  - No new resource will be created
  - No resource will be destroyed

- This comparison and change tracking happens with the help of the **state file**, which maintains the current state of infrastructure.

---

## ⚙️ Approval & Automation Concept

The trainer also explained:
- Terraform usually asks for confirmation before applying changes
- **Using `--auto-approve` bypasses the manual approval prompt**
- This is useful in automation and CI/CD pipelines

---

## 🧠 Key Learnings from Day 03

- Terraform manages infrastructure through code
- Resource blocks define cloud resources
- S3 bucket names must be globally unique
- Terraform safely updates infrastructure instead of recreating it
- State files play a crucial role in tracking changes
- Approval prompts can be bypassed for automation use cases

---

## ✅ Conclusion

Day 03 focused on **hands-on resource creation and lifecycle management** using Terraform.

This session helped in understanding:
- How Terraform provisions AWS resources
- How it tracks and compares changes
- Why the state file is critical
- How real-world DevOps workflows use Terraform

This forms a strong base for upcoming Terraform concepts and real-world implementations 🚀
