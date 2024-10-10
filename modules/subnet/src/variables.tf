variable "accessibility" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = false
}

variable "region" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "vpc_id" {
  type = string
}
