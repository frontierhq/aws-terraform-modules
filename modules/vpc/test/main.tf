provider "aws" {
  region = "eu-west-2"
}

module "vpc" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  cidr_block = "foobar"

  tags = {
    Foo = "Bar"
  }
}
