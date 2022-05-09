output "name" {
  description = "The Name of the ElastiCache Subnet Group"
  value       = aws_elasticache_subnet_group.this.name
}

output "subnet_ids" {
  description = "The Subnet IDs of the ElastiCache Subnet Group"
  value       = aws_elasticache_subnet_group.this.subnet_ids
}
