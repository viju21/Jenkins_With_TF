variable "aws_region" {
  default = "us-east-1"
  description = "AWS region"
}

variable "aws_instance_type" {
  default = "t2.micro"
  description = "Instance type of your ec2 machine"
}

variable "aws_ami" {
  default = "ami-0e86e20dae9224db8"    #ubuntu ami
  description = "AMI of your ec2 machine"
}

variable "aws_key_name" {
  default = "tf_key"
  description = "Key name of your ec2 machine"
}

