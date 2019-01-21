provider "aws" {
  region = "us-east-1"
}

output "public_ip" {
  value = "${aws_instance.sachin.public_ip}"
}

variable "server_port" {
  description = "The Port the server will listen on."
  default     = 8080
}

resource "aws_security_group" "instance" {
  name = "terraform-sachin-example-instance"

  ingress {
    from_port   = "${var.server_port}"
    to_port     = "${var.server_port}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami           = "ami-33dbd459"
  instance_type = "t1.micro"

  vpc_security_group_ids = ["${aws_security_group.instance.id}"]

  tags {
    Name = "terraform-sachin-example"
  }

  user_data = <<EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p "${var.server_port}" &
              EOF
}
