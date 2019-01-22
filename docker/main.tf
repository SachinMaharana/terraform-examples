resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "${var.int_port}"
    external  = "${var.ext_port}"
  }
  name = "${var.container_name}"
}
resource "docker_image" "image_id" {
  name = "${var.image}"
}
