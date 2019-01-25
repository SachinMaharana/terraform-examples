provider "aws" {
  region = "${var.aws_region}"
}

module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

# Deploying network

module "netwworking" {
  source = "./nerworking"
  vpc_cidr = "${var.vpc_cidr}"
  public_cidrs = "${var.public_cidrs}"
  accessip = "${var.accessip}"
}
