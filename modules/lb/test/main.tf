provider "aws" {
  region = "eu-west-2"
}

module "aws_lb" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  idle_timeout       = 30
  load_balancer_type = "application"
  security_groups    = ["sg_foo_g1", "sg_bar_g2"]
  subnets            = ["subnets_foo-pub", "subnets_foo-priv"]

  tags = {
    Foo = "Bar"
  }
}
