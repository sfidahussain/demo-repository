terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
#   region = "us-east-1"
}

resource "aws_instance" "app-dev" {
  ami = "ami-04468e03c37242e1e"
  instance_type = "t2.micro"
}
