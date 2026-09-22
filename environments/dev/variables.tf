variable "aws_region" {
  default = "ap-south-1"
}

variable "environment" {
  default = "dev"
}

variable "vpc_cidr" {
  default = "10.1.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "container_port" {
  default = 80
}
