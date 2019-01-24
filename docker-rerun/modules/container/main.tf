resource "docker_container" "go_container" {
  name = "${var.name}"

  image = "${var.image}"

  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}
