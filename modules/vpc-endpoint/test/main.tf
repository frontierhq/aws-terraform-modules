provider "aws" {
  region = "eu-west-2"
}

module "vpc_endpoint" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  service_name = "foo"
  vpc_id       = "id"

  tags = {
    Foo = "Bar"
  }
}
