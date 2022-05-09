module "parameter_group" {
  source = "./modules/parameter_group"

  count = var.create_parameter_group

  name        = var.parameter_group_name
  family      = var.parameter_group_family
  description = var.parameter_group_description
  parameters  = var.parameter_group_parameters
  tags        = var.parameter_group_tags
}
