resource "aws_instance" "app_instance" {
  ami           = "ami-0c55b159cbfafe1f0"  # Exemplo de Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "docker-node-app-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y docker
              service docker start
              usermod -a -G docker ec2-user
              docker run -d -p 3000:3000 your-docker-image
              EOF
}
