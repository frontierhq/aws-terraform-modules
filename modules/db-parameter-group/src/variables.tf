variable "description" {
  type = string
}

variable "engine" {
  type = string
}

variable "environment" {
  type = string
}

variable "family" {
  type = string
}

variable "identifier" {
  type = string
}

variable "parameters" {
  type = list(map(string))
}

variable "region" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
