##############################################################
#variables for alicloud_nas_access_group
##############################################################
access_group_description = "terraform-alicloud-nas-access-group-update"

##############################################################
#variables for alicloud_nas_file_system
##############################################################
file_system_description = "terraform-alicloud-nas-file-system-update"

##############################################################
#variables for alicloud_nas_access_rule
##############################################################
source_cidr_ip       = "168.1.2.0/16"
rw_access_type       = "RDONLY"
user_access_type     = "all_squash"
access_rule_priority = 2
