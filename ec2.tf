terraform {
    required_version = ">= 0.14.0"
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "3.26.0"
        }
    }
}

resource "aws_instance" "app-dev" {
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
}
