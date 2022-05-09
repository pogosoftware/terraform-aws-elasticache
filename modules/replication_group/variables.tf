##########################################################################
### REQUIRED
##########################################################################
variable "description" {
  description = "User-created description for the replication group"
  type        = string
}

variable "replication_group_id" {
  description = "Replication group identifier. This parameter is stored as a lowercase string"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "apply_immediately" {
  default     = false
  description = "Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is `false`"
  type        = bool
}

variable "at_rest_encryption_enabled" {
  default     = null
  description = "Whether to enable encryption at rest"
  type        = bool
}

variable "auth_token" {
  default     = null
  description = "Password used to access a password protected server. Can be specified only if `transit_encryption_enabled = true`"
  type        = string
}

variable "auto_minor_version_upgrade" {
  default     = true
  description = "Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window. Only supported for engine type \"redis\" and if the engine version is 6 or higher. Defaults to `true`"
  type        = bool
}

variable "automatic_failover_enabled" {
  default     = false
  description = "Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, number_cache_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to `false`"
  type        = bool
}

variable "data_tiering_enabled" {
  default     = null
  description = "Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes"
  type        = bool
}

variable "engine" {
  default     = "redis"
  description = "Name of the cache engine to be used for the clusters in this replication group. The only valid value is `redis`"
  type        = string
}

variable "engine_version" {
  default     = null
  description = "Version number of the cache engine to be used for the cache clusters in this replication group. If the version is 6 or higher, the major and minor version can be set, e.g., 6.2, or the minor version can be unspecified which will use the latest version at creation time, e.g., 6.x. Otherwise, specify the full version desired, e.g., 5.0.6. The actual engine version used is returned in the attribute `engine_version_actual`"
  type        = string
}

variable "final_snapshot_identifier" {
  default     = null
  description = "The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made"
  type        = string
}

variable "global_replication_group_id" {
  default     = null
  description = "The ID of the global replication group to which this replication group should belong"
  type        = string
}

variable "kms_key_id" {
  default     = null
  description = "The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if `at_rest_encryption_enabled = true`"
  type        = string
}

variable "log_delivery_configuration" {
  default     = []
  description = "Specifies the destination and format of Redis SLOWLOG or Redis Engine Log"
  type        = list(map(string))
}

variable "maintenance_window" {
  default     = null
  description = "Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:05:00-sun:09:00`"
  type        = string
}

variable "multi_az_enabled" {
  default     = false
  description = "Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic_failover_enabled must also be enabled. Defaults to `false`"
  type        = bool
}

variable "node_type" {
  default     = null
  description = "Instance class to be used"
  type        = string
}

variable "notification_topic_arn" {
  default     = null
  description = "ARN of an SNS topic to send ElastiCache notifications to"
  type        = string
}

variable "num_cache_clusters" {
  default     = 1
  description = "Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Defaults to `1`"
  type        = string
}

variable "parameter_group_name" {
  default     = null
  description = "Name of the parameter group to associate with this replication group"
  type        = string
}

variable "port" {
  default     = null
  description = "Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379"
  type        = number
}

variable "preferred_cache_cluster_azs" {
  default     = []
  description = "List of EC2 availability zones in which the replication group's cache clusters will be created"
  type        = list(string)
}

variable "security_group_ids" {
  default     = []
  description = "One or more Amazon VPC security groups associated with this replication group"
  type        = list(string)
}

variable "security_group_names" {
  default     = []
  description = "List of cache security group names to associate with this replication group"
  type        = list(string)
}

variable "snapshot_arns" {
  default     = []
  description = "List of ARNs that identify Redis RDB snapshot files stored in Amazon S3"
  type        = list(string)
}

variable "snapshot_name" {
  default     = null
  description = "Name of a snapshot from which to restore data into the new node group"
  type        = string
}

variable "snapshot_retention_limit" {
  default     = null
  description = "Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them"
  type        = number
}

variable "snapshot_window" {
  default     = null
  description = "Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster"
  type        = string
}

variable "subnet_group_name" {
  default     = null
  description = "Name of the cache subnet group to be used for the replication group"
  type        = string
}

variable "transit_encryption_enabled" {
  default     = null
  description = "Whether to enable encryption in transit"
  type        = bool
}

variable "user_group_ids" {
  default     = []
  description = "User Group ID to associate with the replication group"
  type        = list(string)
}

variable "tags" {
  default     = {}
  description = "Map of tags to assign to the resource"
  type        = map(string)
}
