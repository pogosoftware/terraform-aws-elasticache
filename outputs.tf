output "parameter_group_id" {
  description = "The ElastiCache parameter group name"
  value       = try(module.parameter_group[0].this.id, "")
}

output "parameter_group_arn" {
  description = "The AWS ARN associated with the parameter group"
  value       = try(module.parameter_group[0].this.arn, "")
}
