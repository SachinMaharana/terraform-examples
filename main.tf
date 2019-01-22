#Download Image for docker

variable "image" {
  description = "Image for container"
  default     = "sachinnicky/go-app:terra"
}

variable "container_name" {
  description = "Name of container"
  default     = "go_app"
}

variable "int_port" {
  description = "Internal Port of the Image"
  default     = "8000"
}

variable "ext_port" {
  description = "External Port to the image"
  default     = "80"
}

resource "docker_image" "image_id" {
  name = "${var.image}"
}

resource "docker_container" "container_id" {
  name  = "${var.container_name}"
  image = "${docker_image.image_id.latest}"

  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
}

output "Ip Address" {
  value = "${docker_container.container_id.ip_address}"
}

output "container_name" {
  value = "${docker_container.container_id.name}"
}
