output "ip" {
  value = "${docker_container.go_app_container.ip_address}"
}

output "container_name" {
  value = "${docker_container.go_app_container.name}"
}
