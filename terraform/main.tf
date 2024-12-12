terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
    backend "s3" {
        bucket = "ml-terraform-state-bucket-thev"
        key    = "ml-terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "ml-terraform-state-lock"
    }
}

provider "aws" {
    region = var.aws_region
} 

module "s3" {
    source = "./modules/s3" 
}

module "ec2" {
    source = "./modules/ec2"
    image_url = module.ecr.image_url
}

module "ecr" {
    source = "./modules/ecr"
}