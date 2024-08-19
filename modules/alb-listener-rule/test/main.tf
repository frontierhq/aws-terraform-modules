provider "aws" {
  region = "eu-west-2"
}

module "aws_lb_listener_rule" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  aws_lb_listener_listener_arns = ["FooListArn", "BarListArn"]
  aws_lb_target_group_arns      = ["FooArn", "BarArn"]

  listener_rules_config = [
    {
      listener_name     = "foo-lbr-cfg"
      priority          = 22
      target_group_name = "foo"
      values            = ["baz", "ball"]
    },
    {
      listener_name     = "bar-lbr-cfg"
      priority          = 22
      target_group_name = "bar"
      values            = ["baz", "ball"]
    }
  ]

  tags = {
    Foo = "Bar"
  }
}
