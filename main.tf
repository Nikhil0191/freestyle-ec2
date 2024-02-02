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
  region = "us-east-2"
}

resource "aws_instance" "demo-ec2" {
  ami                         = "ami-0dfcb1ef8550277af"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  tags = {
    "Name" = "freestyle-ec2"
  }
}

