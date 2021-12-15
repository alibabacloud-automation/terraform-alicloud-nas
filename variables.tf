variable "region" {
  description = "(Deprecated from version 1.2.0) The region used to launch this module resources."
  type        = string
  default     = ""
}

##############################################################
#variables for alicloud_nas_access_group
##############################################################
variable "access_group_description" {
  description = "The description of nas access group."
  type        = string
  default     = ""
}

variable "access_group_type" {
  description = "The type of nas access group."
  type        = string
  default     = "Vpc"
}

variable "access_group_name" {
  description = "The name of nas access group."
  type        = string
  default     = ""
}

variable "create_access_group" {
  description = "Determine whether a permission group exists of access group."
  type        = bool
  default     = false
}

##############################################################
#variables for alicloud_nas_file_system
##############################################################
variable "file_system_protocol_type" {
  description = "The protocol_type of file system."
  type        = string
  default     = "NFS"
}

variable "create_file_system" {
  description = "Judging whether file system exist of file sytem."
  type        = bool
  default     = false
}

variable "file_system_storage_type" {
  description = "The storage_type of file system."
  type        = string
  default     = "Performance"
}

variable "file_system_description" {
  description = "The description of nas file system."
  type        = string
  default     = ""
}

##############################################################
#variables for alicloud_nas_access_rule
##############################################################
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

variable "create_access_rule" {
  description = "Judging whether permission rules exist of access rule."
  type        = bool
  default     = false
}

##############################################################
#variables for alicloud_nas_mount_target
##############################################################
variable "create_mount_target" {
  description = "Judging whether mount target exist of mount target."
  type        = bool
  default     = false
}

variable "file_system_id" {
  description = "The mount_target_domain of nas mount target."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "The vswitch ids. The vswitch_id fo the mount target."
  type        = string
  default     = ""
}

