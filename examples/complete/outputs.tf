output "this_mount_target_domain" {
  value = module.mount_target.this_mount_target_domain
}

output "this_file_system_id" {
  value = module.file_system.this_file_system_id
}

output "this_protocol_type" {
  value = module.file_system.this_protocol_type
}

output "this_storage_type" {
  value = module.file_system.this_storage_type
}

output "this_access_group_name" {
  value = module.access_group.this_access_group_name
}

output "this_access_group_type" {
  value = module.access_group.this_access_group_type
}

output "this_source_cidr_ip" {
  value = module.access_rule.this_source_cidr_ip
}

output "this_rw_access_type" {
  value = module.access_rule.this_rw_access_type
}

output "this_user_access_type" {
  value = module.access_rule.this_user_access_type
}

output "this_access_rule_priority" {
  value = module.access_rule.this_access_rule_priority
}

output "this_access_rule_id" {
  value = module.access_rule.this_access_rule_id
}

