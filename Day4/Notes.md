# Day 4 – Terraform State & Remote Backend

## Terraform State (High Level)

- Terraform uses a state file (`terraform.tfstate`) to track infrastructure.
- It compares:
  - **Desired State** → What is defined in `.tf` files
  - **Actual State** → What exists in the cloud
- Based on this comparison, Terraform creates, updates, or deletes resources.

---

## Why State File is Important

- Stores infrastructure metadata and resource IDs
- Contains sensitive information
- Acts as Terraform’s source of truth
- Should never be edited manually

---

## Remote Backend

- By default, Terraform stores state locally.
- In real projects, we use a remote backend like Amazon S3.
- This allows centralized and secure storage of the state file.

### Benefits:
- Centralized state management
- Secure storage
- Team collaboration support
- Prevents accidental loss of state file

---

## State Locking

- Prevents multiple users from modifying infrastructure simultaneously.
- Earlier, locking was done using DynamoDB.
- DynamoDB-based locking is now deprecated.
- Terraform supports native S3 locking using:

```hcl
use_lockfile = true
```

---

## Best Practices

- Always use a remote backend
- Enable state locking
- Use separate state files for dev/test/prod
- Take regular backups
- Never manually modify or delete the state file

---

## Key Takeaway

Terraform uses the state file as an intermediate layer to efficiently manage infrastructure changes.  
Understanding state management is essential for real-world DevOps projects.

