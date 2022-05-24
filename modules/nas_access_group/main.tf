resource "alicloud_nas_access_group" "this_access_group" {
  count             = var.create_access_group ? 1 : 0
  access_group_name = var.access_group_name
  access_group_type = var.access_group_type
  description       = var.access_group_description
}