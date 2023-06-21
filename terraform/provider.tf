provider "aws" {
  # shared_credentials_file = "$HOME/.aws/credentials"
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

# random string for flask secret-key env variable
resource "random_string" "flask-secret-key" {
  length           = 16
  special          = true
  override_special = "/@\" "
}

# Declare the Docker provider
terraform {
  required_providers {
    # Set the required provider and versions
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.22.0"
    }
  }
}

# Add the Docker provider configurations
provider "docker" {
  # Configuration options
  host = "npipe:////.//pipe//docker_engine"
}
