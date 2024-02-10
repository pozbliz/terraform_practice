resource "docker_container" "py-app-container" {
  name  = "flask_app"
  image = "pozbliz/terraform_practice:latest"

}