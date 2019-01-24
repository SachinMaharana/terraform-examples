module "image" {
  source = "./image"
  image  = "${lookup(var.image, var.env)}"
}

module "container" {
  source = "./container"
  name   = "${lookup(var.name, var.env)}"
  image  = "${module.image.image_out}"

  int_port = "${lookup(var.int_port, var.env)}"
  ext_port = "${lookup(var.ext_port, var.env)}"
}
