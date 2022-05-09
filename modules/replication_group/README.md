# Module: aws_elasticache_replication_group

Provides an ElastiCache Replication Group resource.

For working with a [Memcached cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/WhatIs.html) or a [single-node Redis instance (Cluster Mode Disabled)](single-node Redis instance (Cluster Mode Disabled)), see the [`aws_elasticache_cluster` resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_cluster).

> **NOTE:** <br>
When you change an attribute, such as `engine_version`, by default the ElastiCache API applies it in the next maintenance window. Because of this, Terraform may report a difference in its planning phase because the actual modification has not yet taken place. You can use the `apply_immediately` flag to instruct the service to apply the change immediately. Using `apply_immediately` can result in a brief downtime as servers reboots. See the AWS Documentation on [Modifying an ElastiCache Cache Cluster](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Modify.html) for more information.

> **NOTE:** <br>
Any attribute changes that re-create the resource will be applied immediately, regardless of the value of `apply_immediately`.

> **NOTE:** <br>
Be aware of the terminology collision around "cluster" for `aws_elasticache_replication_group`. For example, it is possible to create a ["Cluster Mode Disabled [Redis] Cluster"](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Create.CON.Redis.html). With "Cluster Mode Enabled", the data will be stored in shards (called "node groups"). See [Redis Cluster Configuration](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/cluster-create-determine-requirements.html#redis-cluster-configuration) for a diagram of the differences. To enable cluster mode, use a parameter group that has cluster mode enabled. The default parameter groups provided by AWS end with ".cluster.on", for example `default.redis6.x.cluster.on`.

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
| [aws_elasticache_replication_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false` | `bool` | `false` | no |
| <a name="input_at_rest_encryption_enabled"></a> [at\_rest\_encryption\_enabled](#input\_at\_rest\_encryption\_enabled) | Whether to enable encryption at rest | `bool` | `null` | no |
| <a name="input_auth_token"></a> [auth\_token](#input\_auth\_token) | Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true` | `string` | `null` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window. Only supported for engine type "redis" and if the engine version is 6 or higher. Defaults to `true` | `bool` | `true` | no |
| <a name="input_automatic_failover_enabled"></a> [automatic\_failover\_enabled](#input\_automatic\_failover\_enabled) | Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, number\_cache\_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false` | `bool` | `false` | no |
| <a name="input_data_tiering_enabled"></a> [data\_tiering\_enabled](#input\_data\_tiering\_enabled) | Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes | `bool` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | User-created description for the replication group | `string` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | Name of the cache engine to be used for the clusters in this replication group. The only valid value is `redis` | `string` | `"redis"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Version number of the cache engine to be used for the cache clusters in this replication group. If the version is 6 or higher, the major and minor version can be set, e.g., 6.2, or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x. Otherwise, specify the full version desired, e.g., 5.0.6. The actual engine version used is returned in the attribute `engine_version_actual` | `string` | `null` | no |
| <a name="input_final_snapshot_identifier"></a> [final\_snapshot\_identifier](#input\_final\_snapshot\_identifier) | The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made | `string` | `null` | no |
| <a name="input_global_replication_group_id"></a> [global\_replication\_group\_id](#input\_global\_replication\_group\_id) | The ID of the global replication group to which this replication group should belong | `string` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true` | `string` | `null` | no |
| <a name="input_log_delivery_configuration"></a> [log\_delivery\_configuration](#input\_log\_delivery\_configuration) | Specifies the destination and format of Redis SLOWLOG or Redis Engine Log | `list(map(string))` | `[]` | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00` | `string` | `null` | no |
| <a name="input_multi_az_enabled"></a> [multi\_az\_enabled](#input\_multi\_az\_enabled) | Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic\_failover\_enabled must also be enabled. Defaults to `false` | `bool` | `false` | no |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | Instance class to be used | `string` | `null` | no |
| <a name="input_notification_topic_arn"></a> [notification\_topic\_arn](#input\_notification\_topic\_arn) | ARN of an SNS topic to send ElastiCache notifications to | `string` | `null` | no |
| <a name="input_num_cache_clusters"></a> [num\_cache\_clusters](#input\_num\_cache\_clusters) | Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Defaults to `1` | `string` | `1` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | Name of the parameter group to associate with this replication group | `string` | `null` | no |
| <a name="input_port"></a> [port](#input\_port) | Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379 | `number` | `null` | no |
| <a name="input_preferred_cache_cluster_azs"></a> [preferred\_cache\_cluster\_azs](#input\_preferred\_cache\_cluster\_azs) | List of EC2 availability zones in which the replication group's cache clusters will be created | `list(string)` | `[]` | no |
| <a name="input_replication_group_id"></a> [replication\_group\_id](#input\_replication\_group\_id) | Replication group identifier. This parameter is stored as a lowercase string | `string` | n/a | yes |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | One or more Amazon VPC security groups associated with this replication group | `list(string)` | `[]` | no |
| <a name="input_security_group_names"></a> [security\_group\_names](#input\_security\_group\_names) | List of cache security group names to associate with this replication group | `list(string)` | `[]` | no |
| <a name="input_snapshot_arns"></a> [snapshot\_arns](#input\_snapshot\_arns) | List of ARNs that identify Redis RDB snapshot files stored in Amazon S3 | `list(string)` | `[]` | no |
| <a name="input_snapshot_name"></a> [snapshot\_name](#input\_snapshot\_name) | Name of a snapshot from which to restore data into the new node group | `string` | `null` | no |
| <a name="input_snapshot_retention_limit"></a> [snapshot\_retention\_limit](#input\_snapshot\_retention\_limit) | Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them | `number` | `null` | no |
| <a name="input_snapshot_window"></a> [snapshot\_window](#input\_snapshot\_window) | Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster | `string` | `null` | no |
| <a name="input_subnet_group_name"></a> [subnet\_group\_name](#input\_subnet\_group\_name) | Name of the cache subnet group to be used for the replication group | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the resource | `map(string)` | `{}` | no |
| <a name="input_transit_encryption_enabled"></a> [transit\_encryption\_enabled](#input\_transit\_encryption\_enabled) | Whether to enable encryption in transit | `bool` | `null` | no |
| <a name="input_user_group_ids"></a> [user\_group\_ids](#input\_user\_group\_ids) | User Group ID to associate with the replication group | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the created ElastiCache Replication Group |
| <a name="output_cluster_enabled"></a> [cluster\_enabled](#output\_cluster\_enabled) | Indicates if cluster mode is enabled |
| <a name="output_configuration_endpoint_address"></a> [configuration\_endpoint\_address](#output\_configuration\_endpoint\_address) | Address of the replication group configuration endpoint when cluster mode is enabled |
| <a name="output_engine_version_actual"></a> [engine\_version\_actual](#output\_engine\_version\_actual) | Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine |
| <a name="output_id"></a> [id](#output\_id) | ID of the ElastiCache Replication Group |
| <a name="output_member_clusters"></a> [member\_clusters](#output\_member\_clusters) | Identifiers of all the nodes that are part of this replication group |
| <a name="output_primary_endpoint_address"></a> [primary\_endpoint\_address](#output\_primary\_endpoint\_address) | (Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled |
| <a name="output_reader_endpoint_address"></a> [reader\_endpoint\_address](#output\_reader\_endpoint\_address) | (Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->