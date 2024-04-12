resource "aws_ecs_task_definition" "main" {
  family                   = "${var.region}-${var.identifier}-task"
  network_mode             = var.network_mode
  requires_compatibilities = var.requires_compatibilities
  execution_role_arn       = var.execution_role_arn
  task_role_arn            = var.task_role_arn
  cpu                      = var.cpu
  memory                   = var.memory

  container_definitions = jsonencode(var.container_definitions)

  tags = merge(
    {
      Name = "${var.zone}-${var.environment}-${local.identifier}-${lookup(local.short_regions, var.region)}-task"
    },
    var.tags
  )
}
