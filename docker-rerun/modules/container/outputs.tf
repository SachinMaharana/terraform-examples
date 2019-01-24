output "ip" {
  value = "${docker_container.go_container.ip_address}"
}

output "container_name" {
  value = "${docker_container.go_container.name}"
}
