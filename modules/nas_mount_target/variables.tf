variable "create_mount_target" {
  description = "Whether to create nas mount target."
  type        = bool
  default     = false
}

variable "file_system_id" {
  description = "The file_system_id of nas mount target."
  type        = string
  default     = ""
}

variable "access_group_name" {
  description = "The access_group_name of nas mount target."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "The vswitch_id of nas mount target."
  type        = string
  default     = ""
}