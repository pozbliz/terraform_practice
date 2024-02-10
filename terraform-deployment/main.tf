resource "docker_container" "py-app-container" {
  name  = "simple_python_app"
  image = "pozbliz/terraform_practice:latest"

}