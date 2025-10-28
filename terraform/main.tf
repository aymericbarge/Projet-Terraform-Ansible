terraform {
 required_providers {
   docker = {
     source  = "kreuzwerker/docker"
     version = "3.0.2"
   }
  ansible = {
    version = "~> 1.3.0"
    source  = "ansible/ansible"
  }
 }
}