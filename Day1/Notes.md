# 🚀 Terraform – Day 1 Notes

## 📌 Introduction

Before starting hands-on with Terraform, it is important to understand:

- What is Terraform?
- What is Infrastructure as Code (IaC)?
- Why do we need Terraform?
- How Terraform works at a high level?

Without understanding **why** we use Terraform, learning the next 30 days will not be meaningful.

---

# 🏗️ What is Infrastructure as Code (IaC)?

Infrastructure as Code means:

> Writing code to provision and manage infrastructure.

Instead of manually creating:
- Servers (EC2)
- VPC
- Load Balancers
- Databases
- S3
- IAM
- Firewall Rules

We write code to create them automatically.

This approach is called **Infrastructure as Code (IaC).**

---

# 🔧 Infrastructure as Code Tools

There are many IaC tools:

## 🌍 Multi-Cloud (Universal Tools)
- Terraform
- Pulumi

## ☁️ AWS Specific
- CloudFormation
- AWS CDK
- AWS SAM

## ☁️ Azure Specific
- ARM Templates
- Bicep

## ☁️ GCP Specific
- Deployment Manager
- Config Controller
- Config Connector

We choose **Terraform** because:
- It is the most popular
- It works with multiple cloud providers
- It is widely used in industry

---

# ❓ Why Do We Need Terraform?

Cloud providers give us GUI (Console).  
So why not just use that?

Let’s understand the problem.

---

## 🏢 Example: Three-Tier Architecture

A simple application may need:

- Web servers
- App servers
- Load balancers
- Auto scaling
- Databases
- VPC
- Route53
- CDN

Creating all of this manually may take **2 hours**.

Now imagine:

- 6 environments (Dev, Test, QA, Staging, Prod, DR)
- 100+ applications

Manual provisioning becomes:
- Time consuming
- Expensive
- Error-prone
- Inconsistent

---

# ⚠️ Problems with Manual Infrastructure

1. Takes too much time
2. Developers depend on infra team
3. High manpower cost
4. Human errors
5. Security misconfigurations
6. Inconsistent environments
7. “It works on my machine” problem
8. No proper tracking of changes

---

# ✅ How Terraform Solves These Problems

- Write once, deploy many times
- Save time
- Reduce human errors
- Ensure consistent environments
- Easily destroy unused environments
- Version control with Git
- Track all changes
- Easy updates and maintenance

---

# ⚙️ How Terraform Works (High Level)

### Step 1: Write Code
DevOps Engineer writes `.tf` files.

- Extension: `.tf`
- Language: HCL (HashiCorp Configuration Language)
- Human-readable

---

### Step 2: Store in Git
Terraform files are stored in:
- GitHub
- GitLab
- Any version control system

---

### Step 3: Run Terraform Commands

```bash
terraform init        # Initialize
terraform validate    # Validate syntax
terraform plan        # Show execution plan
terraform apply       # Create resources
terraform destroy     # Delete resources
```

---

### Step 4: Terraform Calls Cloud APIs

Terraform interacts with:
- AWS APIs
- Azure APIs
- GCP APIs

Just like:
- AWS Console
- AWS CLI

Terraform uses **Providers** to communicate with cloud platforms.

---

# 🧠 Important Concepts Learned Today

- Infrastructure as Code (IaC)
- Why automation is necessary
- Problems with manual provisioning
- Terraform basics
- Terraform workflow
- HCL language
- Version control integration

---

# 🛠️ Installation (Overview)

- Install Terraform (Mac, Linux, Windows)
- Check version:

```bash
terraform version
```

- Optional:
  - Alias (tf = terraform)
  - Enable autocomplete
  - Install Terraform extension in VS Code

---

# 🎯 Key Takeaways

- Manual infrastructure does not scale.
- Terraform automates infrastructure provisioning.
- It ensures consistency across environments.
- It saves time, cost, and effort.
- Everything becomes version-controlled.

---

# 🔥 Next Steps (Day 2)

- Terraform Providers
- Version Constraints
- Operators
- Hands-on Practice

---

## 📚 Summary

Terraform is an Infrastructure as Code tool that allows us to automate the provisioning, modification, and deletion of cloud resources using code, ensuring consistency, scalability, and efficiency.

---

**Day 1 Completed ✅**
