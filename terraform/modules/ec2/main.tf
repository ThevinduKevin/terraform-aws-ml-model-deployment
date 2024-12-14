resource "aws_instance" "app_server" {
  ami = "ami-0a8bc3e7e4bf8c115"
  instance_type = "t2.micro"

    user_data = <<-EOF
                #!/bin/bash
                sudo yum update -y
                sudo yum install -y docker
                sudo service docker start
                sudo docker run -d -p 80:5000 ${var.image_url}
                EOF
    tags = {
        Name = "ml-app-server"
    }
}

output "public_ip" {
    value = aws_instance.app_server.public_ip
}