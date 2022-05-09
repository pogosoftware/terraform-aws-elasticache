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
