variable "allocation_id" {
  type = string
}

variable "connectivity_type" {
  type    = string
  default = "public"
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "private_ip" {
  type    = string
  default = null
}

variable "region" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "zone" {
  type = string
}
