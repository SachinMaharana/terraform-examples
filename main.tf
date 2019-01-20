provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-33dbd459"
  instance_type = "t1.micro"

  tags {
    NAME = "terraform-example"
  }
}

# resource "PROVIDER_TYPE" "NAME" {
# [CONFIG ...]
# }

