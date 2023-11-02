variable "ami_id" {

}

variable "instance_type" {

}

variable "subnet_id" {

}

variable "region" {

}

variable "access_key" {

}

variable "secret_key" {

}


resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
}