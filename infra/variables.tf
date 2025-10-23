variable "app_name" {
  type    = string
  default = "ms-saudacoes-aleatorias"
}

variable "service_name" {
  type    = string
  default = "saudacoes-aleatorias"
}

variable "instance_type" {
  type    = string
  default = "free"
}

variable "container_port" {
  type    = number
  default = 8080
}

variable "docker_image_name" {
  type    = string
  default = "patriciapaes88/ms-saudacoes-aleatorias"
}

variable "docker_image_tag" {
  type    = string
  default = "1.0.18730293330"

}
  