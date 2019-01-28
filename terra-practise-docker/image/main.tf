resource "docker_image" "go_app_image" {
  name = "${var.image_name}"
}
