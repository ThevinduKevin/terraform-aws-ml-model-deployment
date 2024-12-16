variable "image_url" {
    description = "The URL of the Docker image to deploy on the EC2 instance"
    type = string
    default = "docker.io/thevindukevin/ml-app:tag"
}