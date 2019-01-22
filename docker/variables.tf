variable "image" {
  description = "image for container"
  default = "ghost:latest"
}
variable "container_name" {
  description = "Name of the container"
  default = "ghost_blog"
}
variable "ext_port" {
  description = "external port for container"
  default = "80"
}
variable "int_port" {
  description = "inertnal port for container"
  default = "2368"
}
