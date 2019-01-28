variable "image_name" {
  type        = "map"
  description = "Image Name"
}

variable "container_name" {
  type        = "map"
  description = "Container Name"
}

variable "int_port" {
  type        = "map"
  description = "Internal Port of Container"
}

variable "ext_port" {
  description = "External Port to Container"
  type        = "map"
}

variable "env" {
  description = "Environment: Can be dev or prod"
}
