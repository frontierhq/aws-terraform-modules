variable "listener_arns" {
  type = list(string)
}

variable "target_group_arns" {
  type = list(string)
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "listener_rules_config" {
  type = list(object({
    listener_name     = string
    priority          = number
    target_group_name = string
    values            = list(string)
  }))
}

variable "region" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
