output "cluster_endpoint" {
  description = "Endpoint do cluster EKS"
  value       = module.eks.cluster_endpoint
  sensitive   = false
}

output "cluster_name" {
  description = "Nome do cluster EKS"
  value       = module.eks.cluster_name
}

output "cluster_security_group_id" {
  description = "Security group ID do cluster"
  value       = module.eks.cluster_security_group_id
}

output "argocd_namespace" {
  description = "Namespace do ArgoCD"
  value       = kubernetes_namespace_v1.argocd.metadata[0].name
}

output "vpc_id" {
  description = "ID da VPC criada"
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "IDs das subnets privadas"
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "IDs das subnets públicas"
  value       = module.vpc.public_subnets
}

output "region" {
  description = "Região AWS utilizada"
  value       = local.region
}
