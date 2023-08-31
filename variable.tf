variable "access_key" {
  description = "This is the access key"
  default     = "AKIAZ4AXXJN2DLMDWTVV"                                       #Generate your own keys#
}

variable "secret_key" {
  description = "This is the secret key required with the access key"
  default     = "5+VwG42E8KXGILtAZ7fgY1stvwd2fFcFuWIRuCpd"                    #Generate your own keys#
}

variable "aws_region" {
  description = "This is AWS Region"
  default     = "us-east-2"
}

variable "security_group" {
  description = "This is the name of the security group"
  default     = "pjk_sg"
}

variable "instance_type" {
  description = "This is type of Instance to be created"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "This is the AMI ID required"
  default     = "ami-024e6efaf93d85776"
}

variable "tag_name" {
  description = "This is the tag name for the instance"
  default     = "my ec2 instance"
}

