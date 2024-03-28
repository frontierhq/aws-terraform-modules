resource "aws_db_parameter_group" "main" {
  name        = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${local.identifier}-${lookup(local.db_engines, var.engine)}"
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
      Name = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${local.identifier}-${lookup(local.db_engines, var.engine)}"
    },
    var.tags
  )

  lifecycle {
    create_before_destroy = true
  }
}
