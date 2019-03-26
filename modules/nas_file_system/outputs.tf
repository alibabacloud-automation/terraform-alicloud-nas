locals {
  this_file_system_id = "${join("", alicloud_nas_file_system.this_file_system.*.id)}"
  this_description    = "${join("", alicloud_nas_file_system.this_file_system.*.description)}"
  this_protocol_type  = "${join("", alicloud_nas_file_system.this_file_system.*.protocol_type)}"
  this_storage_type   = "${join("", alicloud_nas_file_system.this_file_system.*.storage_type)}"
}

output "this_file_system_id" {
  value = "${local.this_file_system_id}"
}

output "this_file_system_description" {
  value = "${local.this_description}"
}

output "this_protocol_type" {
  value = "${local.this_protocol_type}"
}

output "this_storage_type" {
  value = "${local.this_storage_type}"
}
