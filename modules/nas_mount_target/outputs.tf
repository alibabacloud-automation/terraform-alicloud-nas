locals {
  this_file_system_id = join(
    "",
    alicloud_nas_mount_target.this_mount_target.*.file_system_id,
  )
  this_mount_target_domain = join("", alicloud_nas_mount_target.this_mount_target.*.id)
  this_vswitch_id          = join("", alicloud_nas_mount_target.this_mount_target.*.vswitch_id)
}

output "this_file_system_id" {
  value = local.this_file_system_id
}

output "this_vswitch_id" {
  value = local.this_vswitch_id
}

output "this_mount_target_domain" {
  value = local.this_mount_target_domain
}

