output "web_ip" {
  value = docker_container.web.network_data[0].ip_address
}

output "db_ip" {
  value = docker_container.db.network_data[0].ip_address
}

output "ports_mysql" {
    value = var.ansible_ports_mysql
}

output "ports_nginx" {
    value = var.ansible_ports_nginx
}