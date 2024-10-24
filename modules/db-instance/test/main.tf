provider "aws" {
  region = "eu-west-2"
}

module "db_instance" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  kms_key_id              = "foo"
  backup_retention_period = 10
  db_subnet_group_name    = "foogrp"
  monitoring_role_arn     = "arn"
  vpc_security_group_ids  = ["foobar"]
  username                = "barbat"

  tags = {
    Foo = "Bar"
  }
}
