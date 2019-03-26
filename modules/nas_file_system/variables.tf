variable "file_system_description" {
  description = "The description of nas file system."
  default     = ""
}

variable "create_file_system" {
  description = "file system id the of file system."
  default     = false
}

variable "protocol_type" {
  description = "The protocol_type of file system."
  default     = "NFS"
}

variable "storage_type" {
  description = "The storage_type of file system."
  default     = "Performance"
}
