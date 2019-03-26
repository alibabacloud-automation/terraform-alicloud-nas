##############################################################
#variables for alicloud_nas_access_group
##############################################################
variable "access_group_description" {
  description = "The description of nas access group."
  default     = "terraform-alicloud-nas-access-group"
}

variable "access_group_type" {
  description = "The type of nas access group."
  default     = "Vpc"
}

variable "access_group_name" {
  description = "The name of nas access group."
  default     = "terraform-alicloud-nas-access-group"
}

variable "create_access_group" {
  description = "Determine whether a permission group exists of access group."
  default     = true
}

##############################################################
#variables for alicloud_nas_file_system
##############################################################
variable "file_system_protocol_type" {
  description = "The protocol_type of file system."
  default     = "NFS"
}

variable "create_file_system" {
  description = "Judging whether file system exist of file sytem."
  default     = true
}

variable "file_system_storage_type" {
  description = "The storage_type of file system."
  default     = "Performance"
}

variable "file_system_description" {
  description = "The description of nas file system."
  default     = "terraform-alicloud-nas-file-system"
}

##############################################################
#variables for alicloud_nas_access_rule
##############################################################
variable "source_cidr_ip" {
  description = "The source_cidr_ip of an existing access rule."
  default     = "168.1.1.0/16"
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
  description = "Judging whether permission rules exist of access rule."
  default     = true
}

##############################################################
#variables for alicloud_nas_mount_target
##############################################################
variable "create_mount_target" {
  description = "Judging whether mount target exist of mount target."
  default     = true
}

variable "file_system_id" {
  description = "The mount_target_domain of nas mount target."
  default     = ""
}

variable "vswitch_id" {
  description = "The vswitch ids. The vswitch_id fo the mount target."
  default     = ""
}
