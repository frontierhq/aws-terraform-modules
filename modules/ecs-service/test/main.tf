provider "aws" {
  region = "eu-west-2"
}

module "ecs_service" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  cluster         = "foo"
  desired_count   = 1
  task_definition = "foobar"

  tags = {
    Foo = "Bar"
  }
}
