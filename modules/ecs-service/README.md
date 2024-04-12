# ECS Service

This module creates an [ECS Service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service).

## Usage

```hcl
module "ecs_service" {
  source = "https://github.com/gofrontier-com/aws-terraform-modules/releases/download/ecs-service/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  cluster         = aws_ecs_cluster.main.id
  desired_count   = 1
  task_definition = module.ecs_task_definition.arn

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/gofrontier-com/aws-terraform-modules/blob/main/README.rst#contributing>.
