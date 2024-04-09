provider "aws" {
  region = "eu-west-2"
}

module "db_instance" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  service_namespace      = "foo"
  predefined_metric_type = "foobar"
  scalable_dimension     = "barbat"
  resource_id            = "id"
  target_value           = 1

  tags = {
    Foo = "Bar"
  }
}
