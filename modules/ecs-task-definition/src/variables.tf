variable "container_definitions" {
  type = list(object({
    name      = string
    image     = string
    cpu       = number
    memory    = number
    essential = bool
    portMappings = list(object({
      containerPort = number
      hostPort      = number
      protocol      = string
    }))
    logConfiguration = optional(object({
      logDriver = string
      options   = map(string)
    }))
  }))
}

variable "cpu" {
  type = number
}

variable "environment" {
  type = string
}

variable "execution_role_arn" {
  type = string
}

variable "identifier" {
  type = string
}

variable "memory" {
  type = number
}

variable "network_mode" {
  type    = string
  default = "awsvpc"
}

variable "region" {
  type = string
}

variable "requires_compatibilities" {
  type = list(string)
  default = [
    "FARGATE"
  ]
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "task_role_arn" {
  type    = string
  default = null
}

variable "zone" {
  type = string
}
