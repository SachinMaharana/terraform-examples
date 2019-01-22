output "IP ADDRESS" {
  value = "${docker_container.container_id.ip_address}"
}
output "contianer_name" {
  value = "${docker_container.container_id.name}"
}
