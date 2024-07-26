# App Autoscaling Policy

This module creates an [App Autoscaling Policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/appautoscaling_policy).

## Usage

```hcl
module "db_instance" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/app-autoscaling-policy/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  predefined_metric_type = "ECSServiceAverageCPUUtilization"
  resource_id            = module.ecs_scaling.resource_id
  scalable_dimension     = module.ecs_scaling.scalable_dimension
  service_namespace      = module.ecs_scaling.service_namespace
  target_value           = 90

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
