output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.networking.vpc_id
}

output "public_subnets_ids" {
  description = "List of Public Subnets IDs"
  value       = module.networking.public_subnets_ids
}

output "private_subnets_ids" {
  description = "List of Private Subnets IDs"
  value       = module.networking.private_subnets_ids
}
