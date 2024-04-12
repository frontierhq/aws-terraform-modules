variable "health_check_config" {
  type = object({
    failure_threshold = optional(number)
    resource_path     = optional(string)
    type              = optional(string)
  })
  default = null
}

variable "health_check_custom_config" {
  type    = map(string)
  default = null
}

variable "name" {
  type = string
}

variable "namespace_id" {
  type = string
}

variable "routing_policy" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "ttl" {
  type    = number
  default = 10
}

variable "type" {
  type    = string
  default = "A"
}
