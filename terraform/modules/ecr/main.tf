resource "aws_ecr_repository" "repo" {
  name = "ml-app-repository"
}

output "repository_url_url" {
  value = aws_ecr_repository.repo.repository_url
}