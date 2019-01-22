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
