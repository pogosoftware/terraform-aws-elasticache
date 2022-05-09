# terraform-aws-elasticache

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_parameter_group"></a> [parameter\_group](#module\_parameter\_group) | ./modules/parameter_group | n/a |
| <a name="module_subnet_group"></a> [subnet\_group](#module\_subnet\_group) | ./modules/subnet_group | n/a |
| <a name="module_user"></a> [user](#module\_user) | ./modules/user | n/a |
| <a name="module_user_group"></a> [user\_group](#module\_user\_group) | ./modules/user_group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_parameter_group"></a> [create\_parameter\_group](#input\_create\_parameter\_group) | Determinate to creates `parameter_group` resources or not | `string` | `true` | no |
| <a name="input_create_subnet_group"></a> [create\_subnet\_group](#input\_create\_subnet\_group) | Determinate to creates `subnet_group` resources or not | `string` | `true` | no |
| <a name="input_parameter_group_description"></a> [parameter\_group\_description](#input\_parameter\_group\_description) | The description of the ElastiCache parameter group. Defaults to `Managed by Terraform` | `string` | `"Managed by Terraform"` | no |
| <a name="input_parameter_group_family"></a> [parameter\_group\_family](#input\_parameter\_group\_family) | Required if `create_parameter_group` is set to true. The family of the ElastiCache parameter group | `string` | `""` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | Required if `create_parameter_group` is set to true. The name of the ElastiCache parameter group | `string` | `""` | no |
| <a name="input_parameter_group_parameters"></a> [parameter\_group\_parameters](#input\_parameter\_group\_parameters) | A list of ElastiCache parameters to apply | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_parameter_group_tags"></a> [parameter\_group\_tags](#input\_parameter\_group\_tags) | Key-value mapping of resource tags | `map(string)` | `{}` | no |
| <a name="input_subnet_group_description"></a> [subnet\_group\_description](#input\_subnet\_group\_description) | Description for the cache subnet group. Defaults to `Managed by Terraform` | `string` | `"Managed by Terraform"` | no |
| <a name="input_subnet_group_name"></a> [subnet\_group\_name](#input\_subnet\_group\_name) | Name for the cache subnet group | `string` | `""` | no |
| <a name="input_subnet_group_subnet_ids"></a> [subnet\_group\_subnet\_ids](#input\_subnet\_group\_subnet\_ids) | List of VPC Subnet IDs for the cache subnet group | `list(string)` | `[]` | no |
| <a name="input_subnet_group_tags"></a> [subnet\_group\_tags](#input\_subnet\_group\_tags) | Key-value map of resource tags | `map(string)` | `{}` | no |
| <a name="input_user_groups"></a> [user\_groups](#input\_user\_groups) | Map of user groups with group id as a key | `map(any)` | `{}` | no |
| <a name="input_user_tags"></a> [user\_tags](#input\_user\_tags) | A list of tags to be added to this resource | `map(string)` | `{}` | no |
| <a name="input_users"></a> [users](#input\_users) | Map of users to create where `user_id` is a key | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_parameter_group_arn"></a> [parameter\_group\_arn](#output\_parameter\_group\_arn) | The AWS ARN associated with the parameter group |
| <a name="output_parameter_group_id"></a> [parameter\_group\_id](#output\_parameter\_group\_id) | The ElastiCache parameter group name |
| <a name="output_subnet_group_name"></a> [subnet\_group\_name](#output\_subnet\_group\_name) | The Name of the ElastiCache Subnet Group |
| <a name="output_subnet_group_subnet_ids"></a> [subnet\_group\_subnet\_ids](#output\_subnet\_group\_subnet\_ids) | The Subnet IDs of the ElastiCache Subnet Group |
| <a name="output_user_groups"></a> [user\_groups](#output\_user\_groups) | The users group id |
| <a name="output_users"></a> [users](#output\_users) | The users id and arn |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->