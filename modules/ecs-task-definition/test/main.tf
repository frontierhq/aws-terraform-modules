provider "aws" {
  region = "eu-west-2"
}

module "ecs_task_definition" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  cpu                = 1
  memory             = 2
  execution_role_arn = "foo"
  task_role_arn      = "bar"
  container_definitions = [
    {
      name      = "dkr"
      image     = "img"
      cpu       = 3
      memory    = 4
      essential = true
      portMappings = [
        {
          containerPort = 5
          hostPort      = 6
          protocol      = "tcp"
        }
      ]
    }
  ]

  tags = {
    Foo = "Bar"
  }
}
