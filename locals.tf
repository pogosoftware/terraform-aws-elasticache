locals {
  parameter_group_name = var.create_parameter_group ? module.parameter_group.id : var.replication_group_parameter_group_name
  subnet_group_name    = var.create_subnet_group ? module.subnet_group.name : var.replication_group_subnet_group_name
  user_group_ids       = length(keys(var.user_groups)) > 0 ? module.user_group.*.id : var.replication_group_user_group_ids
}
