# Module: aws_elasticache_user

Provides an ElastiCache user resource.

> **NOTE:** <br>
All arguments including the username and passwords will be stored in the raw state as plain-text. [Read more about sensitive data in state.](https://www.terraform.io/docs/state/sensitive-data.html)

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
| [aws_elasticache_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_string"></a> [access\_string](#input\_access\_string) | Access permissions string used for this user | `string` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | The current supported value is `REDIS` | `string` | n/a | yes |
| <a name="input_no_password_required"></a> [no\_password\_required](#input\_no\_password\_required) | Indicates a password is not required for this user | `string` | `false` | no |
| <a name="input_passwords"></a> [passwords](#input\_passwords) | Passwords used for this user. You can create up to two passwords for each user | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of tags to be added to this resource | `map(string)` | `{}` | no |
| <a name="input_user_id"></a> [user\_id](#input\_user\_id) | The ID of the user | `string` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | The username of the user | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the created ElastiCache User |
| <a name="output_user_id"></a> [user\_id](#output\_user\_id) | The ID of the user |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->