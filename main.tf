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
  image  = "${var.image}"
}

module "container" {
  source   = "./container"
  image    = "${module.image.image_out}"
  name     = "${var.container_name}"
  int_port = "${var.int_port}"
  ext_port = "${var.ext_port}"
}
