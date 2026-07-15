terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2" # change if you want another region
}

resource "aws_instance" "demo" {
  ami           = "ami-0a989d06dca7dd6f4" # Ubuntu 22.04 in us-east-1
  instance_type = var.instance_type


  tags = {
    Name = "my-second-server"
  }
}
