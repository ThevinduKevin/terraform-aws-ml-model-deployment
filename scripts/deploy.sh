#!/bin/bash
set -e

# Initialize Terraform
terraform init

# Plan Terraform deployment
terraform plan

# Apply Terraform deployment
terraform apply -auto-approve
