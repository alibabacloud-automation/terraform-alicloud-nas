data "alicloud_zones" "default" {
}

data "alicloud_nas_protocols" "default" {
  type = "Capacity"
}

module "vpc" {
  source             = "alibaba/vpc/alicloud"
  create             = true
  vpc_cidr           = "172.16.0.0/12"
  vswitch_cidrs      = ["172.16.0.0/21"]
  availability_zones = [data.alicloud_zones.default.zones.0.id]
}

module "access_group" {
  source = "../.."

  #access_group
  create_access_group = true

  access_group_name        = "tf-testacc-access-group"
  access_group_type        = "Vpc"
  access_group_description = var.access_group_description

  #file_system
  create_file_system = false

  #access_rule
  create_access_rule = false

  #mount_target
  create_mount_target = false

}

module "file_system" {
  source = "../.."

  #access_group
  create_access_group = false

  #file_system
  create_file_system = true

  file_system_type          = "standard"
  file_system_protocol_type = data.alicloud_nas_protocols.default.protocols.0
  file_system_storage_type  = "Capacity"
  file_system_description   = var.file_system_description

  #access_rule
  create_access_rule = false

  #mount_target
  create_mount_target = false

}

module "access_rule" {
  source = "../.."

  #access_group
  create_access_group      = false

  #file_system
  create_file_system = false

  #access_rule
  create_access_rule = true

  access_group_name = module.access_group.this_access_group_name
  source_cidr_ip       = var.source_cidr_ip
  rw_access_type       = var.rw_access_type
  user_access_type     = var.user_access_type
  access_rule_priority = var.access_rule_priority

  #mount_target
  create_mount_target = false

}

module "mount_target" {
  source = "../.."

  #access_group
  create_access_group = false

  #file_system
  create_file_system = false

  #access_rule
  create_access_rule = false

  #mount_target
  create_mount_target = true

  access_group_name = module.access_group.this_access_group_name
  file_system_id    = module.file_system.this_file_system_id
  vswitch_id        = module.vpc.this_vswitch_ids[0]

}