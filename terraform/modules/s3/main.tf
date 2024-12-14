/*resource "aws_s3_bucket" "app_bucket" {
    bucket = "ml-terraform-state-bucket-thev"
    acl    = "private"
}*/

resource "aws_s3_bucket" "app_bucket" {
  bucket = "ml-terraform-state-bucket-thev"
}

resource "aws_s3_bucket_policy" "app_bucket_policy" {
  bucket = aws_s3_bucket.app_bucket.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Deny"
        Principal = "*"
        Action    = "s3:*"
        Resource  = [
          "${aws_s3_bucket.app_bucket.arn}",
          "${aws_s3_bucket.app_bucket.arn}/*"
        ]
        Condition = {
          Bool = {
            "aws:SecureTransport" = "false"
          }
        }
      }
    ]
  })
}
