output "this_mount_target_domain" {
  description = "The domain of mount target"
  value       = module.mount_target.this_mount_target_domain
}

output "this_file_system_id" {
  description = "The id of file system"
  value       = module.file_system.this_file_system_id
}

output "this_protocol_type" {
  description = "The protocol type of file system"
  value       = module.file_system.this_protocol_type
}

output "this_storage_type" {
  description = "The storage type of file system"
  value       = module.file_system.this_storage_type
}

output "this_access_group_name" {
  description = "The name of access group"
  value       = module.access_group.this_access_group_name
}

output "this_access_group_type" {
  description = "The type of access group"
  value       = module.access_group.this_access_group_type
}

output "this_source_cidr_ip" {
  description = "The source cidr ip of access rule"
  value       = module.access_rule.this_source_cidr_ip
}

output "this_rw_access_type" {
  description = "The read write access type of access rule"
  value       = module.access_rule.this_rw_access_type
}

output "this_user_access_type" {
  description = "The user access type of access rule"
  value       = module.access_rule.this_user_access_type
}

output "this_access_rule_priority" {
  description = "The priority of access rule"
  value       = module.access_rule.this_access_rule_priority
}

output "this_access_rule_id" {
  description = "The id of access rule"
  value       = module.access_rule.this_access_rule_id
}