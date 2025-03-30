output "cluster_id" {
  description = "value of the cluster id"
  value       = module.eks.cluster_id
}

output "cluster_endpoint" {
  description = "value of the cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "value of the cluster security group id"
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "value of the region"
  value       = var.aws_region
}

output "oidc_provider_arn" {
  description = "value of the oidc provider arn"
  value       = module.eks.oidc_provider_arn
}