variable "access_group_name" {
  description = "The access_group_name of nas mount target."
  default     = ""
}

variable "file_system_id" {
  description = "The file_system_id of nas mount target."
  default     = ""
}

variable "create_mount_target" {
  description = "The mount_target_domain of nas mount target."
  default     = false
}

variable "vswitch_id" {
  description = "The vswitch_id of nas mount target."
  default     = ""
}

