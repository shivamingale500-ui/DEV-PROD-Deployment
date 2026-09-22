provider "aws" {
  region = var.aws_region
}

module "prod_infra" {
  source = "../../modules/app_infra"

  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  container_port      = var.container_port
}
