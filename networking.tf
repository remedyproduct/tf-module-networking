data "aws_region" "current" {}

module "networking" {
  source  = "cn-terraform/networking/aws"
  version = "2.0.13"

  name_preffix = substr(format("%s-%s", var.name, var.environment), 0, 32)

  region  = data.aws_region.current.name
  profile = "aws_profile"


  vpc_cidr_block                              = var.vpc_cidr_block
  availability_zones                          = var.availability_zones
  public_subnets_cidrs_per_availability_zone  = var.public_subnets_cidrs
  private_subnets_cidrs_per_availability_zone = var.private_subnets_cidrs
}
