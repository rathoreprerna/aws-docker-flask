# Create a docker image resource
resource "docker_image" "flask_image" {               
  name = "flask_image"
  build {  
    path = "../aws-docker-flask"
    dockerfile = "dockerfile"
  }
}