terraform {
  backend "s3" {
    bucket = "ml-terraform-state-bucket-thev"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "ml-terraform-state-lock"
    encrypt = true
  }
}
