variable "access_group_name" {
  description = "The access_group_name of access rule."
  default     = ""
}

variable "source_cidr_ip" {
  description = "The source_cidr_ip of an existing access rule."
  default     = ""
}

variable "rw_access_type" {
  description = "The rw_access_type of access rule."
  default     = "RDWR"
}

variable "user_access_type" {
  description = "The user_access_type of access rule."
  default     = "no_squash"
}

variable "access_rule_priority" {
  description = "The priority of access rule."
  default     = 1
}

variable "create_access_rule" {
  description = "The id of <access group name>:<access rule id>"
  default     = false
}

