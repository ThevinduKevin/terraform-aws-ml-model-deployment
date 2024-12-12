terraform {
    backend "s3" {
        bucket = "ml-terraform-state-bucket-thev"
        key    = "ml-terraform.tfstate"
        region = "ap-south-1"
        dynamodb_table = "ml-terraform-state-lock"
    }
}