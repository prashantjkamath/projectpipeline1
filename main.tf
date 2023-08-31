terraform {
    required_providers {
        aws = {
        source = "hashicorp/aws"
        }
    }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}


############################# Create Security Group ###################################

resource "aws_security_group" "pjk_sg" {
  name        = var.security_group
  description = "Allow inbound traffic for automation"

  ingress {
    description = "request coming from jenkins port"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "For ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group
  }
}


###################### Create EC2 instance #################################

resource "aws_instance" "pjk_ec2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  security_groups = [var.security_group]

  tags = {
    Name = var.tag_name
  }
}
