variable "cookie_duration" {
  type    = number
  default = 86400
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

variable "internal" {
  type    = bool
  default = false
}

variable "lb_target_config" {
  type = list(object({
    load_balancing_algorithm_type    = optional(string)
    name                             = string
    target_port                      = number
    target_protocol                  = string
    protocol_version                 = optional(string)
    slow_start                       = optional(number)
    target_type                      = string
    health_check_healthy_threshold   = optional(number)
    health_check_interval            = optional(number)
    health_check_matcher             = optional(string)
    health_check_path                = string
    health_check_port                = number
    health_check_protocol            = string
    health_check_timeout             = optional(number)
    health_check_unhealthy_threshold = optional(number)
  }))
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

variable "vpc_id" {
  type = string
}
