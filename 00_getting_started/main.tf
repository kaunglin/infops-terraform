terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.58.0"
    }
  }
}

provider "aws" {
  profile = "kaung_iam_user"
  region  = "us-east-1"
}

variable "instance_type" {
  type = string
}

resource "aws_instance" "infOps_server" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = var.instance_type

  tags = {
    Name = "infOps EC2"
  }
}