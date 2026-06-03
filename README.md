# Terraform Practice

A small practice repository for running a Flask application with Docker and describing a simple AWS EC2 instance with Terraform.

This is a learning project, not production infrastructure.

## What it demonstrates

- Building a Python Flask app with Docker
- Running the app locally with Docker Compose
- Defining an AWS provider and EC2 instance in Terraform
- Running Terraform formatting and validation in GitHub Actions

## Run the app locally

```powershell
docker compose up --build
```

The app runs at http://localhost:8000.

## Validate Terraform locally

```powershell
cd terraform-deployment
terraform fmt
terraform init
terraform validate
```

## Important notes

- Terraform state files are not committed.
- The `.terraform/` provider cache is not committed.
- Local `*.tfvars` files are ignored because they can contain account-specific values or secrets.
- The GitHub Actions workflow validates Terraform only. It does not run `terraform apply`.

If you want to apply this configuration, review the AWS region, AMI ID, and instance type first, then run `terraform plan` and `terraform apply` from your own authenticated environment.
