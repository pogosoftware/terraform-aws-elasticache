# Module: aws_elasticache_user_group

Provides an ElastiCache user group resource.

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
| [aws_elasticache_user_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_user_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_engine"></a> [engine](#input\_engine) | The current supported value is `REDIS` | `string` | n/a | yes |
| <a name="input_external_users_ids"></a> [external\_users\_ids](#input\_external\_users\_ids) | The list of user IDs that was created outside the module | `list(string)` | `[]` | no |
| <a name="input_user_group_id"></a> [user\_group\_id](#input\_user\_group\_id) | The ID of the user group | `string` | n/a | yes |
| <a name="input_user_ids"></a> [user\_ids](#input\_user\_ids) | The list of user IDs that belong to the user group | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The user group identifier |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->