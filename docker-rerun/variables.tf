variable "name" {
  description = "Name of the Container"
  default     = "go_app"
}

variable "image" {
  description = "Image to be containerized"
  default     = "sachinnicky/go-app:practise"
}

variable "int_port" {
  description = "Internal Port of Docker Container"
  default     = "8000"
}

variable "ext_port" {
  description = "External Port"
  default     = "80"
}
