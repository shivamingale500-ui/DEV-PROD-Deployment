output "vpc_id" {
  value = module.prod_infra.vpc_id
}

output "ecr_url" {
  value = module.prod_infra.ecr_repository_url
}

output "ecs_cluster" {
  value = module.prod_infra.ecs_cluster_name
}
