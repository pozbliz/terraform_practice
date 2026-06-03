terraform {
  required_version = ">= 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.2"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b5c74e235ed808b9"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-instance"
  }
}
