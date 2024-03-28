resource "aws_ecs_service" "main" {
  name                       = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${var.identifier}-ecs"
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
      target_group_arn = load_balancer.value.arn
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

  tags = merge(
    {
      Name = "${var.zone}-${var.environment}-${local.identifier}-${lookup(local.short_regions, var.region)}-ecs"
    },
    var.tags
  )
}
