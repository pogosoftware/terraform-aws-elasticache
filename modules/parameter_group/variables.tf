##########################################################################
### REQUIRED
##########################################################################
variable "name" {
  description = "The name of the ElastiCache parameter group"
  type        = string
}

variable "family" {
  description = "The family of the ElastiCache parameter group"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "description" {
  default     = "Managed by Terraform"
  description = "The description of the ElastiCache parameter group. Defaults to `Managed by Terraform`"
  type        = string
}

variable "parameters" {
  default     = []
  description = "A list of ElastiCache parameters to apply"
  type = list(object({
    name  = string
    value = string
  }))
}

variable "tags" {
  default     = {}
  description = "Key-value mapping of resource tags"
  type        = map(string)
}
