##########################################################################
### PARAMETER GROUP
##########################################################################
variable "create_parameter_group" {
  default     = true
  description = "Determinate to creates `parameter_group` resources or not"
  type        = string
}

variable "parameter_group_name" {
  default     = ""
  description = "Required if `create_parameter_group` is set to true. The name of the ElastiCache parameter group"
  type        = string
}

variable "parameter_group_family" {
  default     = ""
  description = "Required if `create_parameter_group` is set to true. The family of the ElastiCache parameter group"
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

##########################################################################
### SUBNET GROUP
##########################################################################
variable "create_subnet_group" {
  default     = true
  description = "Determinate to creates `subnet_group` resources or not"
  type        = string
}

variable "subnet_group_name" {
  default     = ""
  description = "Name for the cache subnet group"
  type        = string
}

variable "subnet_group_subnet_ids" {
  default     = []
  description = "List of VPC Subnet IDs for the cache subnet group"
  type        = list(string)
}

variable "subnet_group_description" {
  default     = "Managed by Terraform"
  description = "Description for the cache subnet group. Defaults to `Managed by Terraform`"
  type        = string
}

variable "subnet_group_tags" {
  default     = {}
  description = "Key-value map of resource tags"
  type        = map(string)
}
