variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "max_capacity" {
  type = number
}

variable "min_capacity" {
  type = number
}

variable "region" {
  type = string
}

variable "resource_id" {
  type = string
}

variable "scalable_dimension" {
  type = string
}

variable "service_namespace" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "zone" {
  type = string
}
