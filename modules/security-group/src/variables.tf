variable "egress_rules" {
  type = list(object({
    description     = optional(string)
    from_port       = number
    to_port         = number
    protocol        = string
    cidr_blocks     = optional(list(string))
    prefix_list_ids = optional(list(string))
    self            = optional(bool)
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
    description     = optional(string)
    from_port       = number
    to_port         = number
    protocol        = string
    cidr_blocks     = optional(list(string))
    prefix_list_ids = optional(list(string))
    self            = optional(bool)
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

variable "zone" {
  type = string
}
