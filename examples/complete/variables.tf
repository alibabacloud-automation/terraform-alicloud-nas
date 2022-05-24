##############################################################
#variables for alicloud_nas_access_group
##############################################################
variable "access_group_description" {
  description = "The description of nas access group."
  type        = string
  default     = "tf-testacc-access-group-description"
}

##############################################################
#variables for alicloud_nas_file_system
##############################################################
variable "file_system_description" {
  description = "The description of nas file system."
  type        = string
  default     = "tf-testacc-file-system-description"
}

##############################################################
#variables for alicloud_nas_access_rule
##############################################################
variable "source_cidr_ip" {
  description = "The source_cidr_ip of an existing access rule."
  type        = string
  default     = "168.1.1.0/16"
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