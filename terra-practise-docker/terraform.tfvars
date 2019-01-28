image_name = {
  dev  = "sachinnicky/go-app:terra"
  prod = "sachinnicky/go-app:latest"
}

container_name = {
  dev  = "dev_go_app"
  prod = "prod_go_app"
}

int_port = {
  dev  = "8000"
  prod = "8000"
}

ext_port = {
  dev  = "80"
  prod = "8080"
}
