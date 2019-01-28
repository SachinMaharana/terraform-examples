resource "docker_container" "go_app_container" {
  name  = "${var.container_name}"
  image = "${var.image_name}"

  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}
