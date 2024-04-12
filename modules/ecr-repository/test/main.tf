provider "aws" {
  region = "eu-west-2"
}

module "ecr_repository" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"
  zone        = "bat"

  tags = {
    Foo = "Bar"
  }
}
