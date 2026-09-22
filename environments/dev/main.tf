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

output "dev_vpc_id" {
  value = module.dev_infra.vpc_id
}

output "dev_ecr_url" {
  value = module.dev_infra.ecr_repository_url
}

output "dev_ecs_cluster" {
  value = module.dev_infra.ecs_cluster_name
}
