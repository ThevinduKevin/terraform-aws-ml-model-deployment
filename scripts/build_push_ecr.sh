#!/bin/bash
set -e

# Define variables
IMAGE_NAME="ml-app"
ECR_REPO_URL="<ECR_REPOSITORY_URL>"

# Build Docker image
docker build -t $IMAGE_NAME .

# Tag Docker image for ECR
docker tag $IMAGE_NAME:latest $ECR_REPO_URL:latest

# Push to ECR
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $ECR_REPO_URL
docker push $ECR_REPO_URL:latest
