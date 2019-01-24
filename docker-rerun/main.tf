resource "docker_image" "go_app" {
  name = "${var.image}"
}

resource "docker_container" "go_container" {
  name  = "${var.name}"
  image = "${docker_image.go_app.latest}"

  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}
