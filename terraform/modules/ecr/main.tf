resource "aws_ecr_repository" "ml_app" {
  name = "ml-app-repo"
}

output "repository_url_url" {
  value = aws_ecr_repository.ml_app.repository_url
}