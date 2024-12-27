#!/bin/bash
set -e

# Destroy Terraform resources
terraform destroy -auto-approve
