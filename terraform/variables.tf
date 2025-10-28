variable "ansible_ports_mysql" {
  type = list(object({
    ports = number
  }))
}

variable "ansible_ports_nginx" {
  type = list(object({
    ports = number
  }))
}


