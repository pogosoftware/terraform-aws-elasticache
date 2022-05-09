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
