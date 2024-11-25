variable "cluster" {
  type = string
}

variable "deployment_maximum_percent" {
  type    = number
  default = 200
}

variable "desired_count" {
  type = number
}

variable "enable" {
  type    = bool
  default = false
}

variable "enable_execute_command" {
  type    = bool
  default = false
}

variable "environment" {
  type = string
}

variable "iam_role" {
  type    = string
  default = null
}

variable "identifier" {
  type = string
}

variable "launch_type" {
  type    = string
  default = "FARGATE"
}

variable "load_balancers" {
  type = list(object({
    target_group_arn = string
    container_name   = string
    container_port   = number
  }))
  default = []
}

variable "ordered_placement_strategies" {
  type    = list(map(string))
  default = []
}

variable "placement_constraints" {
  type    = list(map(string))
  default = []
}

variable "region" {
  type = string
}

variable "rollback" {
  type    = bool
  default = false
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "service_registry" {
  type    = list(map(string))
  default = []
}

variable "subnets" {
  type    = list(string)
  default = []
}

variable "task_definition" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
