variable "aws_region" {
  default = "ap-south-1"
}

variable "environment" {
  default = "prod"
}

variable "vpc_cidr" {
  default = "10.2.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.2.1.0/24", "10.2.2.0/24"]
}

variable "container_port" {
  default = 80
}
