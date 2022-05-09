module "parameter_group" {
  source = "./modules/parameter_group"

  count = var.create_parameter_group

  name        = var.parameter_group_name
  family      = var.parameter_group_family
  description = var.parameter_group_description
  parameters  = var.parameter_group_parameters

  tags = var.parameter_group_tags
}

module "subnet_group" {
  source = "./modules/subnet_group"

  count = var.create_subnet_group

  name        = var.subnet_group_name
  description = var.subnet_group_description
  subnet_ids  = var.subnet_group_subnet_ids

  tags = var.subnet_group_tags
}

module "user" {
  source = "./modules/user"

  for_each = var.users

  user_id              = each.key
  user_name            = each.value.user_name
  access_string        = each.value.access_string
  engine               = each.value.engine
  passwords            = lookup(each.value, "passwords", [])
  no_password_required = lookup(each.value, "no_password_required", false)

  tags = var.user_tags
}

module "user_group" {
  source = "./modules/user_group"

  for_each = var.user_groups

  engine             = each.value.engine
  user_group_id      = each.key
  external_users_ids = lookup(each.value, "external_users_ids", [])
  user_ids           = [for k, v in module.user : module.user[k].user_id]
}

module "replication_group" {
  source = "./modules/replication_group"

  count = var.create_replication_group

  description          = var.replication_group_description
  replication_group_id = var.replication_group_replication_group_id

  apply_immediately           = var.replication_group_apply_immediately
  at_rest_encryption_enabled  = var.replication_group_at_rest_encryption_enabled
  auth_token                  = var.replication_group_auth_token
  auto_minor_version_upgrade  = var.replication_group_auto_minor_version_upgrade
  automatic_failover_enabled  = var.replication_group_automatic_failover_enabled
  data_tiering_enabled        = var.replication_group_data_tiering_enabled
  engine                      = var.replication_group_engine
  engine_version              = var.replication_group_engine_version
  final_snapshot_identifier   = var.replication_group_final_snapshot_identifier
  global_replication_group_id = var.replication_group_global_replication_group_id
  kms_key_id                  = var.replication_group_kms_key_id
  log_delivery_configuration  = var.replication_group_log_delivery_configuration
  maintenance_window          = var.replication_group_maintenance_window
  multi_az_enabled            = var.replication_group_multi_az_enabled
  node_type                   = var.replication_group_node_type
  notification_topic_arn      = var.replication_group_notification_topic_arn
  num_cache_clusters          = var.replication_group_num_cache_clusters
  parameter_group_name        = local.parameter_group_name
  port                        = var.replication_group_port
  preferred_cache_cluster_azs = var.replication_group_preferred_cache_cluster_azs
  security_group_ids          = var.replication_group_security_group_ids
  security_group_names        = var.replication_group_security_group_names
  snapshot_arns               = var.replication_group_snapshot_arns
  snapshot_name               = var.replication_group_snapshot_name
  snapshot_retention_limit    = var.replication_group_snapshot_retention_limit
  snapshot_window             = var.replication_group_snapshot_window
  subnet_group_name           = local.subnet_group_name
  transit_encryption_enabled  = var.replication_group_transit_encryption_enabled
  user_group_ids              = local.user_group_ids
  tags                        = var.replication_group_tags
}
