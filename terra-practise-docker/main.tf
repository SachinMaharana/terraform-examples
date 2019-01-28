module "image" {
  source     = "./image"
  image_name = "${lookup(var.image_name, var.env)}"
}

module "container" {
  source         = "./container"
  image_name     = "${module.image.image_name}"
  container_name = "${lookup(var.container_name, var.env)}"
  int_port       = "${lookup(var.int_port, var.env)}"
  ext_port       = "${lookup(var.ext_port,var.env)}"
}
