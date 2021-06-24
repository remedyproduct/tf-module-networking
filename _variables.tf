variable "name" {
  type        = string
  description = "VPC Name"
}

variable "environment" {
  type        = string
  description = "Environment (development, qa, live, etc.)"
  default     = "development"
}

variable "aws_region" {
  type        = string
  description = "AWS Region network will be deployed to"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  type        = string
  description = "Primary CIDR block for the VPC"
  default     = "192.168.0.0/16"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability Zones within AWS Region network should be covered by"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "public_subnets_cidrs" {
  type        = list(string)
  description = "CIDR block for Public Subnets. Number of blocks must match the number of Availability Zones"
  default     = ["192.168.0.0/19", "192.168.32.0/19"]
}

variable "private_subnets_cidrs" {
  type        = list(string)
  description = "CIDR block for Private Subnets. Number of blocks must match the number of Availability Zones"
  default     = ["192.168.128.0/19", "192.168.160.0/19"]
}
