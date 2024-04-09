resource "aws_appautoscaling_policy" "main" {
  name               = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${local.identifier}-scale"
  policy_type        = var.policy_type
  resource_id        = var.resource_id
  scalable_dimension = var.scalable_dimension
  service_namespace  = var.service_namespace

  target_tracking_scaling_policy_configuration {
    predefined_metric_specification {
      predefined_metric_type = var.predefined_metric_type
    }
    target_value = var.target_value
  }
}
