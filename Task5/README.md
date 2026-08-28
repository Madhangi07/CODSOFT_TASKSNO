# Task 5: Infrastructure as Code with Terraform

Provisions AWS cloud resources using modular Terraform scripts.

## Components Provisioned
* **Networking:** AWS VPC (`10.0.0.0/16`)
* **Storage:** AWS S3 Bucket
* **Virtual Machine:** AWS EC2 Instance via reusable module
* **Security:** AWS Security Group with port 22 and 80 rules

## Commands Executed
```bash
terraform init
terraform plan
terraform apply -auto-approve