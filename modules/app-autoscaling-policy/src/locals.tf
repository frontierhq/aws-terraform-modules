locals {
  identifier = replace(lower(var.identifier), "/[^a-z1-9]/", "")

  short_regions = {
    "eu-west-1" = "euw1"
    "eu-west-2" = "euw2"
    "us-east-1" = "use1"

  }
}
