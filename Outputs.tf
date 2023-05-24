output "ip" {
  value = hcloud_server.web.*.ipv4_address
}

output "name" {
  value = hcloud_server.web.*.name
}

output "type" {
  value = hcloud_server.web.*.server_type
}

output "status" {
  value = hcloud_server.web.*.status
}
