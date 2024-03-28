variable "actions" {
  type = list(string)
  default = [
    "ecr:GetDownloadUrlForLayer",
    "ecr:BatchGetImage",
    "ecr:BatchCheckLayerAvailability",
    "ecr:PutImage",
    "ecr:InitiateLayerUpload",
    "ecr:UploadLayerPart",
    "ecr:CompleteLayerUpload",
    "ecr:DescribeRepositories",
    "ecr:ListImages",
  ]
}

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

variable "identifiers" {
  type = list(string)
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

variable "zone" {
  type = string
}
