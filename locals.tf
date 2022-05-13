locals {
  parameter_group_name = var.create_parameter_group ? module.parameter_group[0].id : var.replication_group_parameter_group_name
  subnet_group_name    = var.create_subnet_group ? module.subnet_group[0].name : var.replication_group_subnet_group_name

  group_ids      = [for k, v in module.user_group : v.id]
  user_group_ids = length(keys(var.user_groups)) > 0 ? local.group_ids : var.replication_group_user_group_ids
}
