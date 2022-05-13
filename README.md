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
| <a name="module_replication_group"></a> [replication\_group](#module\_replication\_group) | ./modules/replication_group | n/a |
| <a name="module_subnet_group"></a> [subnet\_group](#module\_subnet\_group) | ./modules/subnet_group | n/a |
| <a name="module_user"></a> [user](#module\_user) | ./modules/user | n/a |
| <a name="module_user_group"></a> [user\_group](#module\_user\_group) | ./modules/user_group | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_parameter_group"></a> [create\_parameter\_group](#input\_create\_parameter\_group) | Determinate to creates `parameter_group` resources or not | `string` | `true` | no |
| <a name="input_create_replication_group"></a> [create\_replication\_group](#input\_create\_replication\_group) | Determinate to creates `replication_group` resources or not | `string` | `true` | no |
| <a name="input_create_subnet_group"></a> [create\_subnet\_group](#input\_create\_subnet\_group) | Determinate to creates `subnet_group` resources or not | `string` | `true` | no |
| <a name="input_parameter_group_description"></a> [parameter\_group\_description](#input\_parameter\_group\_description) | The description of the ElastiCache parameter group. Defaults to `Managed by Terraform` | `string` | `"Managed by Terraform"` | no |
| <a name="input_parameter_group_family"></a> [parameter\_group\_family](#input\_parameter\_group\_family) | Required if `create_parameter_group` is set to true. The family of the ElastiCache parameter group | `string` | `""` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | Required if `create_parameter_group` is set to true. The name of the ElastiCache parameter group | `string` | `""` | no |
| <a name="input_parameter_group_parameters"></a> [parameter\_group\_parameters](#input\_parameter\_group\_parameters) | A list of ElastiCache parameters to apply | <pre>list(object({<br>    name  = string<br>    value = string<br>  }))</pre> | `[]` | no |
| <a name="input_parameter_group_tags"></a> [parameter\_group\_tags](#input\_parameter\_group\_tags) | Key-value mapping of resource tags | `map(string)` | `{}` | no |
| <a name="input_replication_group_apply_immediately"></a> [replication\_group\_apply\_immediately](#input\_replication\_group\_apply\_immediately) | Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false` | `bool` | `false` | no |
| <a name="input_replication_group_at_rest_encryption_enabled"></a> [replication\_group\_at\_rest\_encryption\_enabled](#input\_replication\_group\_at\_rest\_encryption\_enabled) | Whether to enable encryption at rest | `bool` | `null` | no |
| <a name="input_replication_group_auth_token"></a> [replication\_group\_auth\_token](#input\_replication\_group\_auth\_token) | Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true` | `string` | `null` | no |
| <a name="input_replication_group_auto_minor_version_upgrade"></a> [replication\_group\_auto\_minor\_version\_upgrade](#input\_replication\_group\_auto\_minor\_version\_upgrade) | Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window. Only supported for engine type "redis" and if the engine version is 6 or higher. Defaults to `true` | `bool` | `true` | no |
| <a name="input_replication_group_automatic_failover_enabled"></a> [replication\_group\_automatic\_failover\_enabled](#input\_replication\_group\_automatic\_failover\_enabled) | Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, number\_cache\_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false` | `bool` | `false` | no |
| <a name="input_replication_group_data_tiering_enabled"></a> [replication\_group\_data\_tiering\_enabled](#input\_replication\_group\_data\_tiering\_enabled) | Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes | `bool` | `null` | no |
| <a name="input_replication_group_description"></a> [replication\_group\_description](#input\_replication\_group\_description) | Required if `create_replication_group` is set to `true`. User-created description for the replication group | `string` | `""` | no |
| <a name="input_replication_group_engine"></a> [replication\_group\_engine](#input\_replication\_group\_engine) | Name of the cache engine to be used for the clusters in this replication group. The only valid value is `redis` | `string` | `"redis"` | no |
| <a name="input_replication_group_engine_version"></a> [replication\_group\_engine\_version](#input\_replication\_group\_engine\_version) | Version number of the cache engine to be used for the cache clusters in this replication group. If the version is 6 or higher, the major and minor version can be set, e.g., 6.2, or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x. Otherwise, specify the full version desired, e.g., 5.0.6. The actual engine version used is returned in the attribute `engine_version_actual` | `string` | `null` | no |
| <a name="input_replication_group_final_snapshot_identifier"></a> [replication\_group\_final\_snapshot\_identifier](#input\_replication\_group\_final\_snapshot\_identifier) | The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made | `string` | `null` | no |
| <a name="input_replication_group_global_replication_group_id"></a> [replication\_group\_global\_replication\_group\_id](#input\_replication\_group\_global\_replication\_group\_id) | The ID of the global replication group to which this replication group should belong | `string` | `null` | no |
| <a name="input_replication_group_kms_key_id"></a> [replication\_group\_kms\_key\_id](#input\_replication\_group\_kms\_key\_id) | The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true` | `string` | `null` | no |
| <a name="input_replication_group_log_delivery_configuration"></a> [replication\_group\_log\_delivery\_configuration](#input\_replication\_group\_log\_delivery\_configuration) | Specifies the destination and format of Redis SLOWLOG or Redis Engine Log | `list(map(string))` | `[]` | no |
| <a name="input_replication_group_maintenance_window"></a> [replication\_group\_maintenance\_window](#input\_replication\_group\_maintenance\_window) | Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00` | `string` | `null` | no |
| <a name="input_replication_group_multi_az_enabled"></a> [replication\_group\_multi\_az\_enabled](#input\_replication\_group\_multi\_az\_enabled) | Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic\_failover\_enabled must also be enabled. Defaults to `false` | `bool` | `false` | no |
| <a name="input_replication_group_node_type"></a> [replication\_group\_node\_type](#input\_replication\_group\_node\_type) | Instance class to be used | `string` | `null` | no |
| <a name="input_replication_group_notification_topic_arn"></a> [replication\_group\_notification\_topic\_arn](#input\_replication\_group\_notification\_topic\_arn) | ARN of an SNS topic to send ElastiCache notifications to | `string` | `null` | no |
| <a name="input_replication_group_num_cache_clusters"></a> [replication\_group\_num\_cache\_clusters](#input\_replication\_group\_num\_cache\_clusters) | Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Defaults to `1` | `string` | `1` | no |
| <a name="input_replication_group_parameter_group_name"></a> [replication\_group\_parameter\_group\_name](#input\_replication\_group\_parameter\_group\_name) | Name of the parameter group to associate with this replication group | `string` | `null` | no |
| <a name="input_replication_group_port"></a> [replication\_group\_port](#input\_replication\_group\_port) | Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379 | `number` | `null` | no |
| <a name="input_replication_group_preferred_cache_cluster_azs"></a> [replication\_group\_preferred\_cache\_cluster\_azs](#input\_replication\_group\_preferred\_cache\_cluster\_azs) | List of EC2 availability zones in which the replication group's cache clusters will be created | `list(string)` | `[]` | no |
| <a name="input_replication_group_replication_group_id"></a> [replication\_group\_replication\_group\_id](#input\_replication\_group\_replication\_group\_id) | Required if `create_replication_group` is set to `true`. Replication group identifier. This parameter is stored as a lowercase string | `string` | `""` | no |
| <a name="input_replication_group_security_group_ids"></a> [replication\_group\_security\_group\_ids](#input\_replication\_group\_security\_group\_ids) | One or more Amazon VPC security groups associated with this replication group | `list(string)` | `[]` | no |
| <a name="input_replication_group_security_group_names"></a> [replication\_group\_security\_group\_names](#input\_replication\_group\_security\_group\_names) | List of cache security group names to associate with this replication group | `list(string)` | `[]` | no |
| <a name="input_replication_group_snapshot_arns"></a> [replication\_group\_snapshot\_arns](#input\_replication\_group\_snapshot\_arns) | List of ARNs that identify Redis RDB snapshot files stored in Amazon S3 | `list(string)` | `[]` | no |
| <a name="input_replication_group_snapshot_name"></a> [replication\_group\_snapshot\_name](#input\_replication\_group\_snapshot\_name) | Name of a snapshot from which to restore data into the new node group | `string` | `null` | no |
| <a name="input_replication_group_snapshot_retention_limit"></a> [replication\_group\_snapshot\_retention\_limit](#input\_replication\_group\_snapshot\_retention\_limit) | Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them | `number` | `null` | no |
| <a name="input_replication_group_snapshot_window"></a> [replication\_group\_snapshot\_window](#input\_replication\_group\_snapshot\_window) | Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster | `string` | `null` | no |
| <a name="input_replication_group_subnet_group_name"></a> [replication\_group\_subnet\_group\_name](#input\_replication\_group\_subnet\_group\_name) | Name of the cache subnet group to be used for the replication group | `string` | `null` | no |
| <a name="input_replication_group_tags"></a> [replication\_group\_tags](#input\_replication\_group\_tags) | Map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_replication_group_transit_encryption_enabled"></a> [replication\_group\_transit\_encryption\_enabled](#input\_replication\_group\_transit\_encryption\_enabled) | Whether to enable encryption in transit | `bool` | `null` | no |
| <a name="input_replication_group_user_group_ids"></a> [replication\_group\_user\_group\_ids](#input\_replication\_group\_user\_group\_ids) | User Group ID to associate with the replication group | `list(string)` | `[]` | no |
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
| <a name="output_replication_group_arn"></a> [replication\_group\_arn](#output\_replication\_group\_arn) | ARN of the created ElastiCache Replication Group |
| <a name="output_replication_group_cluster_enabled"></a> [replication\_group\_cluster\_enabled](#output\_replication\_group\_cluster\_enabled) | Indicates if cluster mode is enabled |
| <a name="output_replication_group_configuration_endpoint_address"></a> [replication\_group\_configuration\_endpoint\_address](#output\_replication\_group\_configuration\_endpoint\_address) | Address of the replication group configuration endpoint when cluster mode is enabled |
| <a name="output_replication_group_engine_version_actual"></a> [replication\_group\_engine\_version\_actual](#output\_replication\_group\_engine\_version\_actual) | Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine |
| <a name="output_replication_group_id"></a> [replication\_group\_id](#output\_replication\_group\_id) | ID of the ElastiCache Replication Group |
| <a name="output_replication_group_member_clusters"></a> [replication\_group\_member\_clusters](#output\_replication\_group\_member\_clusters) | Identifiers of all the nodes that are part of this replication group |
| <a name="output_replication_group_primary_endpoint_address"></a> [replication\_group\_primary\_endpoint\_address](#output\_replication\_group\_primary\_endpoint\_address) | (Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled |
| <a name="output_replication_group_reader_endpoint_address"></a> [replication\_group\_reader\_endpoint\_address](#output\_replication\_group\_reader\_endpoint\_address) | (Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled |
| <a name="output_subnet_group_name"></a> [subnet\_group\_name](#output\_subnet\_group\_name) | The Name of the ElastiCache Subnet Group |
| <a name="output_subnet_group_subnet_ids"></a> [subnet\_group\_subnet\_ids](#output\_subnet\_group\_subnet\_ids) | The Subnet IDs of the ElastiCache Subnet Group |
| <a name="output_user_groups"></a> [user\_groups](#output\_user\_groups) | The users group id |
| <a name="output_users"></a> [users](#output\_users) | The users id and arn |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->