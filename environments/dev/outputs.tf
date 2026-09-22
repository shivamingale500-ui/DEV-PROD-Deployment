output "vpc_id" {
  value = module.dev_infra.vpc_id
}

output "ecr_url" {
  value = module.dev_infra.ecr_repository_url
}

output "ecs_cluster" {
  value = module.dev_infra.ecs_cluster_name
}
