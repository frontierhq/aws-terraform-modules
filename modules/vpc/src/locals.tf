locals {
  identifier = replace(lower(var.identifier), "/[^a-z1-9]/", "")
}
