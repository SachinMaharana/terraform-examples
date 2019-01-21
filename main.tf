provider "aws" {
  region = "us-east-1"
}

variable "server_port" {
  description = "Port of the server."
  default     = 8080
}

output "public_ip" {
  value = "${aws_instance.example.public_ip}"
}

resource "aws_security_group" "instance" {
  name = "terraform-exmaple-istance"

  ingress {
    from_port   = "${var.server_port}"
    to_port     = "${var.server_port}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami                    = "ami-33dbd459"
  instance_type          = "t1.micro"
  vpc_security_group_ids = ["${aws_security_group.instance.id}"]

  tags {
    Name = "terraform-example"
  }

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p "${var.server_port}" &
              EOF
}

# resource "PROVIDER_TYPE" "NAME" {
# [CONFIG ...]
# }

