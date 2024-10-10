resource "aws_ecs_service" "main" {
  name                       = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-ecs"
  cluster                    = var.cluster
  launch_type                = var.launch_type
  task_definition            = var.task_definition
  desired_count              = var.desired_count
  deployment_maximum_percent = var.deployment_maximum_percent
  iam_role                   = var.iam_role

  deployment_circuit_breaker {
    enable   = var.enable
    rollback = var.rollback
  }

  network_configuration {
    security_groups = var.security_groups
    subnets         = var.subnets
  }

  dynamic "load_balancer" {
    for_each = var.load_balancers

    content {
      target_group_arn = load_balancer.value.target_group_arn
      container_name   = load_balancer.value.container_name
      container_port   = load_balancer.value.container_port
    }
  }

  dynamic "placement_constraints" {
    for_each = var.placement_constraints

    content {
      type       = placement_constraints.value.type
      expression = placement_constraints.value.expression
    }
  }

  dynamic "service_registries" {
    for_each = var.service_registry

    content {
      registry_arn = service_registries.value.registry_arn
      port         = lookup(service_registries.value, "port", null)
    }
  }

  lifecycle {
    ignore_changes = [
      desired_count
    ]
  }

  tags = merge(
    {
      Name = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-ngw"
    },
    var.tags
  )
}
