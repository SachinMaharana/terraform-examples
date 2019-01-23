#Download Image for docker
# resource "docker_image" "image_id" {
#   name = "${var.image}"
# }
# resource "docker_container" "container_id" {
#   name  = "${var.container_name}"
#   image = "${docker_image.image_id.latest}"
#   ports {
#     internal = "${var.int_port}"
#     external = "${var.ext_port}"
#   }
# }

module "image" {
  source = "./image"
  image  = "${lookup(var.image, var.env)}"
}

module "container" {
  source   = "./container"
  image    = "${module.image.image_out}"
  name     = "${lookup(var.container_name, var.env)}"
  int_port = "${var.int_port}"
  ext_port = "${lookup(var.ext_port, var.env)}"
}

resource "null_resource" "null_id" {
  provisioner "local-exec" {
    command = "echo ${module.container.container_name}: ${module.container.ip} >> container.txt"
  }
}
