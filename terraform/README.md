# Terraform AWS Infrastructure

This configuration consolidates the AWS EC2 and security-group lab into the
flagship repository. It uses the latest Canonical Ubuntu 24.04 AMI available in
the selected region, requires a restricted administrator CIDR for SSH, permits
HTTP traffic, enforces IMDSv2, and encrypts the instance root volume.

Authenticate with the AWS CLI or environment variables. Do not store AWS
credentials in this repository.

```powershell
terraform -chdir=terraform init
terraform -chdir=terraform fmt -check
terraform -chdir=terraform validate
terraform -chdir=terraform plan -var "allowed_ssh_cidr=203.0.113.10/32"
terraform -chdir=terraform apply -var "allowed_ssh_cidr=203.0.113.10/32"
```

Replace the example CIDR with the trusted administrator's public IPv4 address.
Run `terraform -chdir=terraform destroy` when the lab is no longer needed.
Terraform state and variable files are intentionally ignored.
