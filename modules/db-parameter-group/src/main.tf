resource "aws_db_parameter_group" "main" {
  name        = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-${lookup(local.db_engines, var.engine)}"
  description = var.description
  family      = var.family

  dynamic "parameter" {
    for_each = var.parameters
    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }

  tags = merge(
    {
      Name = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-${lookup(local.db_engines, var.engine)}"
    },
    var.tags
  )

  lifecycle {
    create_before_destroy = true
  }
}
