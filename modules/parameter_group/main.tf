resource "aws_elasticache_parameter_group" "this" {
  name        = var.name
  family      = var.family
  description = var.description
  tags        = var.tags

  dynamic "parameter" {
    for_each = var.parameters

    content {
      name  = each.value.name
      value = each.value.value
    }
  }
}
