provider "aws" {
  region = "eu-west-2"
}

module "security_group" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  vpc_id      = "foo"
  description = "foobar"

  tags = {
    Foo = "Bar"
  }
}
