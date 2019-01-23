variable "env" {
  description = "env: dev or prod"
}

variable "image" {
  description = "Image for container"
  type        = "map"

  #   default = {
  #     dev  = "sachinnicky/go-app:terra"
  #     prod = "sachinnicky/go-app:latest"
  #   }
}

variable "container_name" {
  description = "Name of container"
  type        = "map"

  #   default = {
  #     dev  = "dev_go_app"
  #     prod = "prod_go_app"
  #   }
}

variable "int_port" {
  description = "Internal Port of the Image"
  default     = "8000"
}

variable "ext_port" {
  description = "External Port to the image"
  type        = "map"

  #   default = {
  #     dev  = "8080"
  #     prod = "80"
  #   }
}
