provider "aws" {
  region = "eu-west-2"
}

module "aws_lb_target_group" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  vpc_id = "FooBar"

  lb_target_config = [
    {
      name                  = "Foo-lb-tg-cfg"
      target_port           = 40
      target_protocol       = "http"
      target_type           = "string"
      health_check_path     = "string"
      health_check_port     = 22
      health_check_protocol = "string"
    },
    {
      name                  = "Bar-lb-tg-cfg"
      target_port           = 40
      target_protocol       = "http"
      target_type           = "string"
      health_check_path     = "string"
      health_check_port     = 22
      health_check_protocol = "string"
    }
  ]

  tags = {
    Foo = "Bar"
  }
}
