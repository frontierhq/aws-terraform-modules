resource "aws_service_discovery_service" "main" {
  name = var.name
  dns_config {
    namespace_id   = var.namespace_id
    routing_policy = var.routing_policy

    dns_records {
      ttl  = var.ttl
      type = var.type
    }
  }

  dynamic "health_check_custom_config" {
    for_each = try([var.health_check_custom_config], [])
    content {
      failure_threshold = try(health_check_custom_config.value.failure_threshold, null)
    }
  }

  dynamic "health_check_config" {
    for_each = try([var.health_check_config], [])
    content {
      failure_threshold = try(health_check_config.value.failure_threshold, null)
      resource_path     = try(health_check_config.value.resource_path, null)
      type              = try(health_check_config.value.type, null)
    }
  }

  tags = var.tags
}