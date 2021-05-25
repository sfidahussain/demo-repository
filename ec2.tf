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
  region = "us-east-1"
}

resource "aws_instance" "app-dev" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
}
