output "ec2_public_ip" {
  description = "public ip of ec2 instance"  
  value = module.ec2.public_ip
}

output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value = module.ecr.repository_url
}