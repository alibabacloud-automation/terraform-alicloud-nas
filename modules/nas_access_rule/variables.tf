variable "create_access_rule" {
  description = "Whether to create nas access rule."
  type        = bool
  default     = false
}

variable "access_group_name" {
  description = "The access_group_name of access rule."
  type        = string
  default     = ""
}

variable "source_cidr_ip" {
  description = "The source_cidr_ip of an existing access rule."
  type        = string
  default     = ""
}

variable "rw_access_type" {
  description = "The rw_access_type of access rule."
  type        = string
  default     = "RDWR"
}

variable "user_access_type" {
  description = "The user_access_type of access rule."
  type        = string
  default     = "no_squash"
}

variable "access_rule_priority" {
  description = "The priority of access rule."
  type        = number
  default     = 1
}