# Module: aws_elasticache_subnet_group

Provides an ElastiCache Subnet Group resource.

> **NOTE:** <br>
ElastiCache Subnet Groups are only for use when working with an ElastiCache cluster inside of a VPC. If you are on EC2 Classic, see the [ElastiCache Security Group resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_security_group).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elasticache_subnet_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description for the cache subnet group. Defaults to `Managed by Terraform` | `string` | `"Managed by Terraform"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name for the cache subnet group | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of VPC Subnet IDs for the cache subnet group | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The Name of the ElastiCache Subnet Group |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | The Subnet IDs of the ElastiCache Subnet Group |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->