terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "terraform_practice" {
  name = "pozbliz/terraform_practice:latest"
}

resource "docker_container" "py-app-container" {
  name  = "flask_app"
  image = docker_image.terraform_practice.name

}