terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

# Implicit provider detection can occur if tf finds Docker socket or API on system,
# but it is recommended to explicitly declare provider configuration
provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "terraform_practice" {
  name = "pozbliz/terraform_practice:latest"
}

resource "docker_container" "py-app-container" {
  name  = "flask_app"
  image = docker_image.terraform_practice.name
  ports {
    internal = 8000
    external = 8000
  }
}