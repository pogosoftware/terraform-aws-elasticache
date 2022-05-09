output "id" {
  description = "The ElastiCache parameter group name"
  value       = aws_elasticache_parameter_group.this.id
}

output "arn" {
  description = "The AWS ARN associated with the parameter group"
  value       = aws_elasticache_parameter_group.this.arn
}
