provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sachin" {
  ami           = "ami-40d28157"
  instance_type = "t1.micro"

  tags {
    Name = "terraform-example"
  }
}
