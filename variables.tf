##########################################################################
### REQUIRED
##########################################################################
variable "parameter_group_name" {
  description = "Required if `create_parameter_group` is set to true. The name of the ElastiCache parameter group"
  type        = string
}

variable "parameter_group_family" {
  description = "Required if `create_parameter_group` is set to true. The family of the ElastiCache parameter group"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "create_parameter_group" {
  default     = true
  description = "Determinate to creates `parameter_group` resource or not"
  type        = string
}

variable "parameter_group_description" {
  default     = "Managed by Terraform"
  description = "The description of the ElastiCache parameter group. Defaults to `Managed by Terraform`"
  type        = string
}

variable "parameter_group_parameters" {
  default     = []
  description = "A list of ElastiCache parameters to apply"
  type = list(object({
    name  = string
    value = string
  }))
}

variable "parameter_group_tags" {
  default     = {}
  description = "Key-value mapping of resource tags"
  type        = map(string)
}
