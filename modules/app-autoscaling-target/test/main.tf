provider "aws" {
  region = "eu-west-2"
}

module "app_autoscaling_target" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  max_capacity       = 1
  min_capacity       = 1
  resource_id        = "foo"
  scalable_dimension = 1
  service_namespace  = "foobar"

  tags = {
    Foo = "Bar"
  }
}
