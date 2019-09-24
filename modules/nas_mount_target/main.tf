resource "alicloud_nas_mount_target" "this_mount_target" {
  count             = var.create_mount_target ? 1 : 0
  file_system_id    = var.file_system_id
  access_group_name = var.access_group_name
  vswitch_id        = var.vswitch_id
}

