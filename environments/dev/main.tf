terraform {
  backend "s3" {
    bucket       = "java-app-project-terraform-state-193131272475"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}

provider "aws" {
  region = var.aws_region
}

module "dev_infra" {
  source = "../../modules/app_infra"

  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  container_port      = var.container_port
}
