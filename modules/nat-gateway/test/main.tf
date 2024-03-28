provider "aws" {
  region = "eu-west-2"
}

module "nat_gateway" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  allocation_id = "foobar"
  subnet_id     = "foo"

  tags = {
    Foo = "Bar"
  }
}
