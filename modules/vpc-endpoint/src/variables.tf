variable "auto_accept" {
  type    = bool
  default = true
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "policy" {
  type    = string
  default = null
}

variable "private_dns_enabled" {
  type    = bool
  default = false
}

variable "private_ip" {
  type    = string
  default = null
}

variable "region" {
  type = string
}

variable "route_table_ids" {
  type    = list(string)
  default = []
}

variable "security_group_ids" {
  type    = list(string)
  default = null
}

variable "service_name" {
  type = string
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "vpc_id" {
  type = string
}

variable "vpc_endpoint_type" {
  type    = string
  default = "Gateway"
}
