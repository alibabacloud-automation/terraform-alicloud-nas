locals {
  this_access_group_name = join(
    "",
    alicloud_nas_access_rule.this_access_rule[*].access_group_name,
  )
  this_source_cidr_ip = join(
    "",
    alicloud_nas_access_rule.this_access_rule[*].source_cidr_ip,
  )
  this_rw_access_type = join(
    "",
    alicloud_nas_access_rule.this_access_rule[*].rw_access_type,
  )
  this_user_access_type = join(
    "",
    alicloud_nas_access_rule.this_access_rule[*].user_access_type,
  )
  this_priority       = join("", alicloud_nas_access_rule.this_access_rule[*].priority)
  this_access_rule_id = join("", alicloud_nas_access_rule.this_access_rule[*].id)
}

output "this_access_group_name" {
  description = "The name of access group"
  value       = local.this_access_group_name
}

output "this_source_cidr_ip" {
  description = "The source cidr ip of access rule"
  value       = local.this_source_cidr_ip
}

output "this_rw_access_type" {
  description = "The read write access type of access rule"
  value       = local.this_rw_access_type
}

output "this_user_access_type" {
  description = "The user access type of access rule"
  value       = local.this_user_access_type
}

output "this_access_rule_priority" {
  description = "The priority of access rule"
  value       = local.this_priority
}

output "this_access_rule_id" {
  description = "The id of access rule"
  value       = local.this_access_rule_id
}