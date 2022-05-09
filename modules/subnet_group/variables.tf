##########################################################################
### REQUIRED
##########################################################################
variable "name" {
  description = "Name for the cache subnet group"
  type        = string
}

variable "subnet_ids" {
  description = "List of VPC Subnet IDs for the cache subnet group"
  type        = list(string)
}

##########################################################################
### OPTIONAL
##########################################################################
variable "description" {
  default     = "Managed by Terraform"
  description = "Description for the cache subnet group. Defaults to `Managed by Terraform`"
  type        = string
}

variable "tags" {
  default     = {}
  description = "Key-value map of resource tags"
  type        = map(string)
}
