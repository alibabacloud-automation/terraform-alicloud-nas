variable "create_file_system" {
  description = "Whether to create nas file system."
  type        = bool
  default     = false
}

variable "file_system_type" {
  description = "The type of the file system."
  type        = string
  default     = "standard"
}

variable "protocol_type" {
  description = "The protocol_type of file system."
  type        = string
  default     = "NFS"
}

variable "storage_type" {
  description = "The storage_type of file system."
  type        = string
  default     = "Performance"
}

variable "file_system_description" {
  description = "The description of nas file system."
  type        = string
  default     = ""
}