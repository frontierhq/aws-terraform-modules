variable "allocated_storage" {
  type    = number
  default = 20
}

variable "apply_immediately" {
  type    = bool
  default = false
}

variable "vpc_security_group_ids" {
  type = list(string)
}

variable "backup_retention_period" {
  type = number
}

variable "backup_window" {
  type    = string
  default = "01:00-02:00"
}

variable "copy_tags_to_snapshot" {
  type    = bool
  default = false
}

variable "db_name" {
  type    = string
  default = null
}

variable "db_subnet_group_name" {
  type = string
}

variable "delete_automated_backups" {
  type    = bool
  default = true
}

variable "deletion_window_in_days" {
  type    = number
  default = 30
}

variable "engine" {
  type    = string
  default = "postgres"
}

variable "engine_version" {
  type    = string
  default = null
}

variable "environment" {
  type = string
}

variable "family" {
  type    = string
  default = "postgres16"
}

variable "final_snapshot_identifier" {
  type    = string
  default = null
}

variable "identifier" {
  type = string
}

variable "instance_class" {
  type    = string
  default = "db.t3.small"
}

variable "kms_key_id" {
  type = string
}

variable "maintenance_window" {
  type    = string
  default = "sun:02:00-sun:03:00"
}

variable "manage_master_user_password" {
  type    = bool
  default = true
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = false
}

variable "monitoring_interval" {
  type    = number
  default = 60
}

variable "monitoring_role_arn" {
  type = string
}

variable "multi_az" {
  type    = string
  default = false
}

variable "password" {
  type    = string
  default = null
}

variable "performance_insights_enabled" {
  type    = bool
  default = true
}

variable "publicly_accessible" {
  type    = bool
  default = false
}

variable "region" {
  type = string
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
}

variable "storage_encrypted" {
  type    = bool
  default = true
}

variable "storage_type" {
  type    = string
  default = "gp2"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "username" {
  type = string
}
