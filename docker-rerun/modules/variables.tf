variable "env" {
  description = "dev or prod"
}

variable "image" {
  description = "Image to be containerized"
  type        = "map"
}

variable "name" {
  description = "Name of the Container"
  type        = "map"
}

variable "int_port" {
  description = "Internal Port of Docker Container"
  type        = "map"
}

variable "ext_port" {
  description = "External Port"
  type        = "map"
}
