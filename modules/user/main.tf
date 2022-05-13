resource "aws_elasticache_user" "this" {
  user_id              = var.user_id
  user_name            = var.user_name
  access_string        = var.access_string
  engine               = var.engine
  passwords            = var.passwords
  no_password_required = var.no_password_required
  tags                 = var.tags
}
