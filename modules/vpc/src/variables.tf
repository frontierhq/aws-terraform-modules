variable "cidr_block" {
  type = string
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = string
  default = false
}

variable "enable_network_address_usage_metrics" {
  type    = bool
  default = false
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "ipv4_ipam_pool_id" {
  type    = string
  default = null
}

variable "ipv4_netmask_length" {
  type    = number
  default = null
}

variable "region" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "zone" {
  type = string
}
