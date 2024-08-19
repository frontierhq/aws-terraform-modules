variable "aws_lb_arn" {
  type = string
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "listener_config" {
  type = list(object({
    name            = string
    port            = number
    protocol        = string
    certificate_arn = optional(string)
  }))
}

variable "port" {
  type = number
}

variable "protocol" {
  type = string
}

variable "region" {
  type = string
}

variable "type" {
  type    = string
  default = "lb_cookie"
}

variable "tags" {
  type    = map(string)
  default = {}
}
