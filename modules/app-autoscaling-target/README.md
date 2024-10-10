# App Autoscaling Target

This module creates an [App Autoscaling Target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_target).

## Usage

```hcl
module "app_autoscaling_target" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/app-autoscaling-target/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region

  max_capacity       = 5
  min_capacity       = 1
  resource_id        = "service/${aws_ecs_cluster.main.name}/${module.express_service.name}"
  scalable_dimension = "ecs:service:DesiredCount"
  service_namespace  = "ecs"

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
