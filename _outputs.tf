output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.main.vpc_id
}

output "public_subnets_ids" {
  description = "List of Public Subnets IDs"
  value       = module.main.public_subnets_ids
}

output "private_subnets_ids" {
  description = "List of Private Subnets IDs"
  value       = module.main.private_subnets_ids
}
