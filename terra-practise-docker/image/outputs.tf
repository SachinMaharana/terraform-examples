output "image_name" {
  value = "${docker_image.go_app_image.name}"
}

output "image_id" {
  value = "${docker_image.go_app_image.id}"
}
