# Module: aws_elasticache_parameter_group

Provides an ElastiCache parameter group resource.

> **NOTE:** <br>
Attempting to remove the `reserved-memory` parameter when `family` is set to `redis2.6` or `redis2.8` may show a perpetual difference in Terraform due to an Elasticache API limitation. Leave that parameter configured with any value to workaround the issue.

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
| [aws_elasticache_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_parameter_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the ElastiCache parameter group. Defaults to `Managed by Terraform` | `string` | `"Managed by Terraform"` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the ElastiCache parameter group | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the ElastiCache parameter group | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | A list of ElastiCache parameters to apply | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value mapping of resource tags | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The AWS ARN associated with the parameter group |
| <a name="output_id"></a> [id](#output\_id) | The ElastiCache parameter group name |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->