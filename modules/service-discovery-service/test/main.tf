provider "aws" {
  region = "eu-west-2"
}

module "service_discovery_service" {
  source = "../src"

  name         = "foo"
  namespace_id = "bar"

  tags = {
    Foo = "Bar"
  }
}
