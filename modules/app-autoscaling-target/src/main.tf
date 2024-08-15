resource "aws_appautoscaling_target" "main" {
  max_capacity       = var.max_capacity
  min_capacity       = var.min_capacity
  resource_id        = var.resource_id
  scalable_dimension = var.scalable_dimension
  service_namespace  = var.service_namespace

  tags = merge(
    {
      Name = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-scale"
    },
  var.tags)
}
