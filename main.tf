terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-2"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0d18e50ca22537278" #Ubuntu 22.04
  instance_type = "t2.micro"
  key_name      = "boiko"

  tags = {
    Name = "Boiko HW5"
  }
}