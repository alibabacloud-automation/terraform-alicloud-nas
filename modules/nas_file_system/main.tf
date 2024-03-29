resource "alicloud_nas_file_system" "this_file_system" {
  count            = var.create_file_system ? 1 : 0
  file_system_type = var.file_system_type
  protocol_type    = var.protocol_type
  storage_type     = var.storage_type
  description      = var.file_system_description
}