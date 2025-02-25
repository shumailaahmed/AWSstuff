provider "aws" {
  region = "us-west-2"
}

variable "ami_id" {}
variable "instance_type" { default = "t3.micro" }
variable "key_name" {}
variable "subnet_id" {}

resource "aws_security_group" "bastionhost_sg" {
  name_prefix = "bastion-"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["117.20.16.19/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "bastionhost" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.bastionhost_sg.id]

  tags = {
    Name = "Bastion Host"
  }
}
