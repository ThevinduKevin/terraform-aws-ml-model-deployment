terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "~> 5.0"
        }
    }
    
}

provider "aws" {
    region = var.aws_region
    profile = "ml-terraform"
} 

module "s3" {
    source = "./modules/s3" 
}

module "ecr" {
    source = "./modules/ecr"
}

module "ec2" {
    source = "./modules/ec2"
    image_url = module.ecr.repository_url
}