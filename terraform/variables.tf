variable "aws_region" {
  description = "aws_region"
  default = "us-east-1"
}
variable "environment" {
  default = "Development"
}
variable "primary_az" {
  description = "primary_az"
  default = "us-east-1a"
}
variable "secondary_az" {
  description = "secondary_az"
  default = "us-east-1b"
}
variable "third_az" {
  description = "third_az"
  default = "us-east-1c"
}
variable "vpc_cidr" {
  description = "VPC cidr block"
}
variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 cidr block"
}
variable "public_subnet_2_cidr" {
  description = "Public Subnet 2 cidr block"
}
variable "public_subnet_3_cidr" {
  description = "Public Subnet 3 cidr block"
}
variable "private_subnet_1_cidr" {
  description = "Private Subnet 1 cidr block"
}
variable "private_subnet_2_cidr" {
  description = "Private Subnet 2 cidr block"
}
variable "private_subnet_3_cidr" {
  description = "Private Subnet 3 cidr block"
}

# Ubuntu Image
data "aws_ami" "ubuntu_ami" {
  most_recent      = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
  owners = ["099720109477"]
}

variable "key_name" {
  description = " key name pair"
}
