# Usage

<!--- BEGIN_TF_DOCS --->
# VPC Networking - Terraform Module

## Requirements

| Name | Version |
|------|---------|
| aws | ~> 3.46.0 |

## Providers

No provider.

## Modules

| Name | Source | Version |
|------|--------|---------|
| networking | cn-terraform/networking/aws | 2.0.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zones | Availability Zones within AWS Region network should be covered by | `list(string)` | <pre>[<br>  "us-east-1a",<br>  "us-east-1b"<br>]</pre> | no |
| aws\_region | AWS Region network will be deployed to | `string` | `"us-east-1"` | no |
| environment | Environment (development, qa, live, etc.) | `string` | `"development"` | no |
| name | VPC Name | `string` | n/a | yes |
| private\_subnets\_cidrs | CIDR block for Private Subnets. Number of blocks must match the number of Availability Zones | `list(string)` | <pre>[<br>  "192.168.128.0/19",<br>  "192.168.160.0/19"<br>]</pre> | no |
| public\_subnets\_cidrs | CIDR block for Public Subnets. Number of blocks must match the number of Availability Zones | `list(string)` | <pre>[<br>  "192.168.0.0/19",<br>  "192.168.32.0/19"<br>]</pre> | no |
| vpc\_cidr\_block | Primary CIDR block for the VPC | `string` | `"192.168.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| private\_subnets\_ids | List of Private Subnets IDs |
| public\_subnets\_ids | List of Public Subnets IDs |
| vpc\_id | The ID of the VPC |

<!--- END_TF_DOCS --->

