# ECS Task Definition

This module creates an [ECS Task Definition](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition).

## Usage

```hcl
module "ecs_task_definition" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/ecs-task-definition/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region

  cpu                = 1024
  memory             = 2048
  execution_role_arn = aws_iam_role.execution_role.arn
  task_role_arn      = aws_iam_role.task_role.arn
  container_definitions = [
    {
      cpu       = 512
      essential = true
      image     = "public.ecr.aws/nginx/nginx:mainline-alpine"
      memory    = 1024
      name      = "nginx"

      portMappings = [
        {
          containerPort = 80
          hostPort      = 8080
          protocol      = "tcp"
        }
      ]
    }
  ]

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
