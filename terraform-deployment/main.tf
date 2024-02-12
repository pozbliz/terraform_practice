#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 5.0"
#    }
#  }
#}

# Provider block
provider "aws" {
  region     = "ap-northeast-1"
}

# Resources block
resource "aws_instance" "app_server" {
  ami = "ami-0b5c74e235ed808b9"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-instance"
  }
}
