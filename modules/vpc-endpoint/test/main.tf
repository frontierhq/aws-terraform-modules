provider "aws" {
  region = "eu-west-2"
}

module "vpc_endpoint" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  route_table_ids = ["foo"]
  service_name    = "foobar"
  vpc_id          = "id"

  tags = {
    Foo = "Bar"
  }
}
