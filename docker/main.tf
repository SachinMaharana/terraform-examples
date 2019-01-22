#doenloaded lates ghost image

resource "docker_container" "container_id" {
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external  = "80"
  }
  name = "blog"
}
resource "docker_image" "image_id" {
  name = "ghost:latest"
}
