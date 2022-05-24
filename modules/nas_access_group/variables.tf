variable "create_access_group" {
  description = "Whether to create nas access group."
  type        = bool
  default     = false
}

variable "access_group_name" {
  description = "The access_group_name of nas access group."
  type        = string
  default     = ""
}

variable "access_group_type" {
  description = "The type of nas access group."
  type        = string
  default     = "Vpc"
}

variable "access_group_description" {
  description = "The description of nas access group."
  type        = string
  default     = ""
}