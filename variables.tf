##########################################################################
### PARAMETER GROUP
##########################################################################
variable "create_parameter_group" {
  default     = true
  description = "Determinate to creates `parameter_group` resources or not"
  type        = string
}

variable "parameter_group_name" {
  default     = ""
  description = "Required if `create_parameter_group` is set to true. The name of the ElastiCache parameter group"
  type        = string
}

variable "parameter_group_family" {
  default     = ""
  description = "Required if `create_parameter_group` is set to true. The family of the ElastiCache parameter group"
  type        = string
}

variable "parameter_group_description" {
  default     = "Managed by Terraform"
  description = "The description of the ElastiCache parameter group. Defaults to `Managed by Terraform`"
  type        = string
}

variable "parameter_group_parameters" {
  default     = []
  description = "A list of ElastiCache parameters to apply"
  type = list(object({
    name  = string
    value = string
  }))
}

variable "parameter_group_tags" {
  default     = {}
  description = "Key-value mapping of resource tags"
  type        = map(string)
}

##########################################################################
### SUBNET GROUP
##########################################################################
variable "create_subnet_group" {
  default     = true
  description = "Determinate to creates `subnet_group` resources or not"
  type        = string
}

variable "subnet_group_name" {
  default     = ""
  description = "Name for the cache subnet group"
  type        = string
}

variable "subnet_group_subnet_ids" {
  default     = []
  description = "List of VPC Subnet IDs for the cache subnet group"
  type        = list(string)
}

variable "subnet_group_description" {
  default     = "Managed by Terraform"
  description = "Description for the cache subnet group. Defaults to `Managed by Terraform`"
  type        = string
}

variable "subnet_group_tags" {
  default     = {}
  description = "Key-value map of resource tags"
  type        = map(string)
}

##########################################################################
### USER
##########################################################################
variable "users" {
  default     = {}
  description = "Map of users to create where `user_id` is a key"
  type        = map(any)
}

##########################################################################
### USER GROUP
##########################################################################
variable "user_groups" {
  default     = {}
  description = "Map of user groups with group id as a key"
  type        = map(any)
}

##########################################################################
### REPLICATION GROUP
##########################################################################
variable "create_replication_group" {
  default     = true
  description = "Determinate to creates `replication_group` resources or not"
  type        = string
}

variable "replication_group_description" {
  default     = ""
  description = "Required if `create_replication_group` is set to `true`. User-created description for the replication group"
  type        = string
}

variable "replication_group_replication_group_id" {
  default     = ""
  description = "Required if `create_replication_group` is set to `true`. Replication group identifier. This parameter is stored as a lowercase string"
  type        = string
}

variable "replication_group_apply_immediately" {
  default     = false
  description = "Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false`"
  type        = bool
}

variable "replication_group_at_rest_encryption_enabled" {
  default     = null
  description = "Whether to enable encryption at rest"
  type        = bool
}

variable "replication_group_auth_token" {
  default     = null
  description = "Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true`"
  type        = string
}

variable "replication_group_auto_minor_version_upgrade" {
  default     = true
  description = "Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window. Only supported for engine type \"redis\" and if the engine version is 6 or higher. Defaults to `true`"
  type        = bool
}

variable "replication_group_automatic_failover_enabled" {
  default     = false
  description = "Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, number_cache_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`"
  type        = bool
}

variable "replication_group_data_tiering_enabled" {
  default     = null
  description = "Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes"
  type        = bool
}

variable "replication_group_engine" {
  default     = "redis"
  description = "Name of the cache engine to be used for the clusters in this replication group. The only valid value is `redis`"
  type        = string
}

variable "replication_group_engine_version" {
  default     = null
  description = "Version number of the cache engine to be used for the cache clusters in this replication group. If the version is 6 or higher, the major and minor version can be set, e.g., 6.2, or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x. Otherwise, specify the full version desired, e.g., 5.0.6. The actual engine version used is returned in the attribute `engine_version_actual`"
  type        = string
}

variable "replication_group_final_snapshot_identifier" {
  default     = null
  description = "The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made"
  type        = string
}

variable "replication_group_global_replication_group_id" {
  default     = null
  description = "The ID of the global replication group to which this replication group should belong"
  type        = string
}

variable "replication_group_kms_key_id" {
  default     = null
  description = "The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true`"
  type        = string
}

variable "replication_group_log_delivery_configuration" {
  default     = []
  description = "Specifies the destination and format of Redis SLOWLOG or Redis Engine Log"
  type        = list(map(string))
}

variable "replication_group_maintenance_window" {
  default     = null
  description = "Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`"
  type        = string
}

variable "replication_group_multi_az_enabled" {
  default     = false
  description = "Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic_failover_enabled must also be enabled. Defaults to `false`"
  type        = bool
}

variable "replication_group_node_type" {
  default     = null
  description = "Instance class to be used"
  type        = string
}

variable "replication_group_notification_topic_arn" {
  default     = null
  description = "ARN of an SNS topic to send ElastiCache notifications to"
  type        = string
}

variable "replication_group_num_cache_clusters" {
  default     = 1
  description = "Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Defaults to `1`"
  type        = string
}

variable "replication_group_parameter_group_name" {
  default     = null
  description = "Name of the parameter group to associate with this replication group"
  type        = string
}

variable "replication_group_port" {
  default     = null
  description = "Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379"
  type        = number
}

variable "replication_group_preferred_cache_cluster_azs" {
  default     = []
  description = "List of EC2 availability zones in which the replication group's cache clusters will be created"
  type        = list(string)
}

variable "replication_group_security_group_ids" {
  default     = []
  description = "One or more Amazon VPC security groups associated with this replication group"
  type        = list(string)
}

variable "replication_group_security_group_names" {
  default     = []
  description = "List of cache security group names to associate with this replication group"
  type        = list(string)
}

variable "replication_group_snapshot_arns" {
  default     = []
  description = "List of ARNs that identify Redis RDB snapshot files stored in Amazon S3"
  type        = list(string)
}

variable "replication_group_snapshot_name" {
  default     = null
  description = "Name of a snapshot from which to restore data into the new node group"
  type        = string
}

variable "replication_group_snapshot_retention_limit" {
  default     = null
  description = "Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them"
  type        = number
}

variable "replication_group_snapshot_window" {
  default     = null
  description = "Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster"
  type        = string
}

variable "replication_group_subnet_group_name" {
  default     = null
  description = "Name of the cache subnet group to be used for the replication group"
  type        = string
}

variable "replication_group_transit_encryption_enabled" {
  default     = null
  description = "Whether to enable encryption in transit"
  type        = bool
}

variable "replication_group_user_group_ids" {
  default     = []
  description = "User Group ID to associate with the replication group"
  type        = list(string)
}

variable "replication_group_tags" {
  default     = {}
  description = "Map of tags to assign to the resource"
  type        = map(string)
}
