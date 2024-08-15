variable "encryption_type" {
  type    = string
  default = "AES256"
}

variable "environment" {
  type = string
}

variable "force_delete" {
  type    = bool
  default = false
}

variable "identifier" {
  type = string
}

variable "image_tag_mutability" {
  type    = string
  default = "MUTABLE"
}

variable "kms_key" {
  type    = string
  default = null
}

variable "region" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
