resource "docker_container" "web" {
  name  = "web"
  image = "nginx"
  ports {
    internal = 80
    external = 8080
  }
}

resource "docker_container" "db" {
  name  = "db"
  image = "mysql"
  env = [
    "MYSQL_ROOT_PASSWORD=secret"
  ]
}

resource "ansible_group" "servers" {
  name = "servers"
}

resource "ansible_host" "nginx" {
  name    = "nginx"
  groups  = [ansible_group.servers.name]
  variables = {
    ansible_host = docker_container.web.name
    ansible_connection = "docker"
  }
}

resource "ansible_host" "mysql" {
  name    = "mysql"
  groups  = [ansible_group.servers.name]
  variables = {
    ansible_host = docker_container.db.name
    ansible_connection = "docker"
  }
}