resource "aws_s3_bucket" "app_bucket" {
    bucket = "ml-terraform-state-bucket-thev"
    acl    = "private"
  
}