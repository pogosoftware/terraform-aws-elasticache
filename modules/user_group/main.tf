resource "aws_elasticache_user_group" "this" {
  engine        = var.engine
  user_group_id = var.user_group_id
  user_ids      = concat(var.external_users_ids, var.user_ids)
}
