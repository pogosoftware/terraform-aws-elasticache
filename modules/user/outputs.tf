output "user_id" {
  description = "The ID of the user"
  value       = aws_elasticache_user.this.user_id
}

output "arn" {
  description = "The ARN of the created ElastiCache User"
  value       = aws_elasticache_user.this.arn
}
