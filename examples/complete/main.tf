data "alicloud_nas_protocols" "example" {
  type = var.file_system_storage_type
}

module "file_system" {
  source = "../../"

  ###############################################################
  #variables for file system
  ##############################################################
  file_system_protocol_type = data.alicloud_nas_protocols.example.protocols.0

  create_file_system       = true
  file_system_storage_type = var.file_system_storage_type
  file_system_description  = var.file_system_description
}

module "access_group" {
  source = "../../"

  ###############################################################
  #variables for access group
  ##############################################################
  access_group_name = var.access_group_name

  create_access_group      = true
  access_group_type        = var.access_group_type
  access_group_description = var.access_group_description
}

module "access_rule" {
  source = "../../"

  ###############################################################
  #variables for access rule
  ##############################################################
  access_group_name = module.access_group.this_access_group_name

  create_access_rule   = true
  source_cidr_ip       = var.source_cidr_ip
  rw_access_type       = var.rw_access_type
  user_access_type     = var.user_access_type
  access_rule_priority = var.access_rule_priority
}

data "alicloud_zones" "this" {
  available_resource_creation = "VSwitch"
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_name           = "my_module_vpc"
  vpc_cidr           = "172.16.0.0/16"
  vswitch_name       = "my_module_vswitch"
  vswitch_cidrs      = ["172.16.1.0/24"]
  availability_zones = [data.alicloud_zones.this.ids.0]
}


module "mount_target" {
  source = "../../"

  ###############################################################
  #variables for mount target
  ##############################################################
  access_group_name = module.access_group.this_access_group_name

  create_mount_target = true
  file_system_id      = module.file_system.this_file_system_id
  vswitch_id          = module.vpc.vswitch_ids[0]
}

