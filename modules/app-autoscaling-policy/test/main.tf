provider "aws" {
  region = "eu-west-2"
}

module "app_autoscaling_policy" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  service_namespace      = "foo"
  predefined_metric_type = "foobar"
  scalable_dimension     = "barbat"
  resource_id            = "id"
  target_value           = 1

  tags = {
    Foo = "Bar"
  }
}
