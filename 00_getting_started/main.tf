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

resource "aws_instance" "infOps_server" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"

  tags = {
    Name = "infOps EC2"
  }
}