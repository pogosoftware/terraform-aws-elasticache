resource "aws_elasticache_replication_group" "this" {
  description          = var.description
  replication_group_id = var.replication_group_id

  apply_immediately           = var.apply_immediately
  at_rest_encryption_enabled  = var.at_rest_encryption_enabled
  auth_token                  = var.auth_token
  auto_minor_version_upgrade  = var.auto_minor_version_upgrade
  automatic_failover_enabled  = var.automatic_failover_enabled
  data_tiering_enabled        = var.data_tiering_enabled
  engine                      = var.engine
  engine_version              = var.engine_version
  final_snapshot_identifier   = var.final_snapshot_identifier
  global_replication_group_id = var.global_replication_group_id
  kms_key_id                  = var.kms_key_id
  maintenance_window          = var.maintenance_window
  multi_az_enabled            = var.multi_az_enabled
  node_type                   = var.node_type
  notification_topic_arn      = var.notification_topic_arn
  num_cache_clusters          = var.num_cache_clusters
  parameter_group_name        = var.parameter_group_name
  port                        = var.port
  preferred_cache_cluster_azs = var.preferred_cache_cluster_azs
  security_group_ids          = var.security_group_ids
  security_group_names        = var.security_group_names
  snapshot_arns               = var.snapshot_arns
  snapshot_name               = var.snapshot_name
  snapshot_retention_limit    = var.snapshot_retention_limit
  snapshot_window             = var.snapshot_window
  subnet_group_name           = var.subnet_group_name
  transit_encryption_enabled  = var.transit_encryption_enabled
  user_group_ids              = var.user_group_ids
  tags                        = var.tags

  dynamic "log_delivery_configuration" {
    for_each = var.log_delivery_configuration

    content {
      destination      = lookup(each.value, "destination", null)
      destination_type = lookup(each.value, "destination_type", null)
      log_format       = each.value.log_format
      log_type         = each.value.log_type
    }
  }
}
