terraform {
  required_providers {
    koyeb = {
      source = "koyeb/koyeb"
    }
  }
}

provider "koyeb" {
  # KOYEB_TOKEN deve estar definido como variável de ambiente
}

resource "koyeb_service" "my-service" {
  app_name = var.app_name

  definition {
    name = var.service_name

    instance_types {
      type = "free"
    }

    ports {
      port     = var.container_port
      protocol = "http"
    }

    scalings {
      min = 0
      max = 1
    }

    routes {
      path = "/"
      port = var.container_port
    }

    health_checks {
      http {
        port = var.container_port
        path = "/saudacao"
      }
    }

    regions = ["was"]

    docker {
      image = "${var.docker_image_name}:${var.docker_image_tag}"
    }
  }
}
