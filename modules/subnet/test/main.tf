provider "aws" {
  region = "eu-west-2"
}

module "subnet" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  accessibility     = "foo"
  availability_zone = "barbat"
  cidr_block        = "foobar"
  vpc_id            = "id"

  tags = {
    Foo = "Bar"
  }
}
