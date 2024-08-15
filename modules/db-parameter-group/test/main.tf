provider "aws" {
  region = "eu-west-2"
}

module "db_parameter_group" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  description = "foo"
  engine      = "foobar"
  family      = "barfoo"

  parameters = [
    {
      foo = "bar"
    }
  ]

  tags = {
    Foo = "Bar"
  }
}
