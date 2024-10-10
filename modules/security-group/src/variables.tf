variable "egress_rules" {
  type = list(object({
    cidr_blocks     = optional(list(string))
    description     = optional(string)
    from_port       = number
    prefix_list_ids = optional(list(string))
    protocol        = string
    security_groups = optional(list(string))
    self            = optional(bool)
    to_port         = number
  }))
  default = []
}

variable "description" {
  type = string
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "ingress_rules" {
  type = list(object({
    cidr_blocks     = optional(list(string))
    description     = optional(string)
    from_port       = number
    prefix_list_ids = optional(list(string))
    protocol        = string
    security_groups = optional(list(string))
    self            = optional(bool)
    to_port         = number
  }))
  default = []
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
