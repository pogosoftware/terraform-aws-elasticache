##########################################################################
### REQUIRED
##########################################################################
variable "access_string" {
  description = "Access permissions string used for this user"
  type        = string
}

variable "engine" {
  description = "The current supported value is `REDIS`"
  type        = string
}

variable "user_id" {
  description = "The ID of the user"
  type        = string
}

variable "user_name" {
  description = "The username of the user"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "no_password_required" {
  default     = false
  description = "Indicates a password is not required for this user"
  type        = string
}

variable "passwords" {
  default     = []
  description = "Passwords used for this user. You can create up to two passwords for each user"
  type        = list(string)
}

variable "tags" {
  default     = {}
  description = "A list of tags to be added to this resource"
  type        = map(string)
}
