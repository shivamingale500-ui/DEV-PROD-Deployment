variable "environment" {
  type        = string
  description = "Target deployment workspace name (dev or prod)"
}

variable "vpc_cidr" {
  type        = string
  description = "Unique base CIDR block for network mapping isolation"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Subnet CIDR blocks mapping array"
}

variable "availability_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "container_port" {
  type    = number
  default = 80
}
