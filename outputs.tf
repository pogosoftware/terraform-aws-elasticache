##########################################################################
### PARAMETER GROUP
##########################################################################
output "parameter_group_id" {
  description = "The ElastiCache parameter group name"
  value       = try(module.parameter_group[0].this.id, "")
}

output "parameter_group_arn" {
  description = "The AWS ARN associated with the parameter group"
  value       = try(module.parameter_group[0].this.arn, "")
}

##########################################################################
### SUBNET GROUP
##########################################################################
output "subnet_group_name" {
  description = "The Name of the ElastiCache Subnet Group"
  value       = try(module.subnet_group[0].this.name, "")
}

output "subnet_group_subnet_ids" {
  description = "The Subnet IDs of the ElastiCache Subnet Group"
  value       = try(module.subnet_group[0].this.subnet_ids, "")
}

##########################################################################
### USER
##########################################################################
output "users" {
  description = "The users id and arn"
  value       = { for k, v in var.users : k => module.user[k] }
}

##########################################################################
### USER GROUP
##########################################################################
output "user_groups" {
  description = "The users group id"
  value       = { for k, v in var.user_groups : k => module.user_group[k] }
}

##########################################################################
### REPLICATION GROUP
##########################################################################
output "replication_group_arn" {
  description = "ARN of the created ElastiCache Replication Group"
  value       = try(module.replication_group[0].this.arn, "")
}

output "replication_group_engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine"
  value       = try(module.replication_group[0].this.engine_version_actual, "")
}

output "replication_group_cluster_enabled" {
  description = "Indicates if cluster mode is enabled"
  value       = try(module.replication_group[0].this.cluster_enabled, "")
}

output "replication_group_configuration_endpoint_address" {
  description = "Address of the replication group configuration endpoint when cluster mode is enabled"
  value       = try(module.replication_group[0].this.configuration_endpoint_address, "")
}

output "replication_group_id" {
  description = "ID of the ElastiCache Replication Group"
  value       = try(module.replication_group[0].this.id, "")
}

output "replication_group_member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group"
  value       = try(module.replication_group[0].this.member_clusters, "")
}
output "replication_group_primary_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled"
  value       = try(module.replication_group[0].this.primary_endpoint_address, "")
}

output "replication_group_reader_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled"
  value       = try(module.replication_group[0].this.reader_endpoint_address, "")
}
