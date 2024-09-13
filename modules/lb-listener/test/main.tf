provider "aws" {
  region = "eu-west-2"
}

module "aws_lb_listener" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  aws_lb_arn = "FooBarArn"
  port       = 4040
  protocol   = "https"

  listener_config = [
    {
      name     = "foo-lb-listener-cfg"
      port     = 40
      protocol = "http"
    },
    {
      name     = "Bar-lb-listener-cfg"
      port     = 40
      protocol = "http"
    }
  ]

  tags = {
    Foo = "Bar"
  }
}
