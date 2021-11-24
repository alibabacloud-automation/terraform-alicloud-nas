module "file_system" {
  source = "./modules/nas_file_system"

  ###############################################################
  #variables for file system
  ##############################################################
  protocol_type = var.file_system_protocol_type

  create_file_system      = var.create_file_system
  storage_type            = var.file_system_storage_type
  file_system_description = var.file_system_description
}

module "access_group" {
  source = "./modules/nas_access_group"

  ###############################################################
  #variables for access group
  ##############################################################
  access_group_name = var.access_group_name

  create_access_group      = var.create_access_group
  access_group_type        = var.access_group_type
  access_group_description = var.access_group_description
}

module "access_rule" {
  source = "./modules/nas_access_rule"

  ###############################################################
  #variables for access rule
  ##############################################################
  access_group_name = var.access_group_name

  create_access_rule   = var.create_access_rule
  source_cidr_ip       = var.source_cidr_ip
  rw_access_type       = var.rw_access_type
  user_access_type     = var.user_access_type
  access_rule_priority = var.access_rule_priority
}

module "mount_target" {
  source = "./modules/nas_mount_target"

  ###############################################################
  #variables for mount target
  ##############################################################
  create_mount_target = var.create_mount_target

  access_group_name = var.access_group_name
  file_system_id    = var.create_file_system ? module.file_system.this_file_system_id : var.file_system_id
  vswitch_id        = var.vswitch_id
}

