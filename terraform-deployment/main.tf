resource "docker_container" "my_container" {
  name  = "simple_python_app"
  image = "pozbliz/terraform_practice:latest"
  
}