##########################################################################
### REQUIRED
##########################################################################
variable "engine" {
  description = "The current supported value is `REDIS`"
  type        = string
}

variable "user_group_id" {
  description = "The ID of the user group"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "user_ids" {
  default     = []
  description = "The list of user IDs that belong to the user group"
  type        = list(string)
}

variable "external_users_ids" {
  default     = []
  description = "The list of user IDs that was created outside the module"
  type        = list(string)
}
