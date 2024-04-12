variable "ami" {
  type = string
}

variable "associate_public_ip_address" {
  type    = bool
  default = null
}

variable "availability_zone" {
  type    = string
  default = null
}

variable "cpu_options" {
  type    = list(map(number))
  default = []
}

variable "disable_api_stop" {
  type    = bool
  default = false
}

variable "disable_api_termination" {
  type    = bool
  default = false
}

variable "environment" {
  type = string
}

variable "iam_instance_profile" {
  type    = string
  default = null
}

variable "identifier" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "monitoring" {
  type    = bool
  default = true
}

variable "region" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "user_data" {
  type    = string
  default = ""
}

variable "vpc_security_group_ids" {
  type    = list(string)
  default = []
}

variable "zone" {
  type = string
}
