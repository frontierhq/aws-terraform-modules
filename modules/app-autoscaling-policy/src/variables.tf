variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "predefined_metric_type" {
  type = string
}

variable "policy_type" {
  type    = string
  default = "TargetTrackingScaling"
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

variable "target_value" {
  type = number
}
