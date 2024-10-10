variable "access_logs" {
  type    = map(string)
  default = {}
}

variable "enable_cross_zone_load_balancing" {
  type    = bool
  default = null
}

variable "enable_deletion_protection" {
  type    = bool
  default = false
}

variable "enabled" {
  type    = bool
  default = false
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "idle_timeout" {
  type    = number
  default = 30
}

variable "internal" {
  type    = bool
  default = false
}

variable "load_balancer_type" {
  type    = string
  default = "application"
}

variable "region" {
  type = string
}

variable "security_groups" {
  type = list(string)
}

variable "subnets" {
  type = list(string)
}

variable "tags" {
  type    = map(string)
  default = {}
}
