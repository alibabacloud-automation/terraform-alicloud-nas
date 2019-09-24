locals {
  this_description = join(
    "",
    alicloud_nas_access_group.this_access_group.*.description,
  )
  this_access_group_name = join("", alicloud_nas_access_group.this_access_group.*.name)
  this_type              = join("", alicloud_nas_access_group.this_access_group.*.type)
}

output "this_access_group_description" {
  value = local.this_description
}

output "this_access_group_type" {
  value = local.this_type
}

output "this_access_group_name" {
  value = local.this_access_group_name
}

