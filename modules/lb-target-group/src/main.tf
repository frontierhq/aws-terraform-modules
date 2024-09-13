
resource "aws_lb_target_group" "main" {

  for_each = { for lb_cfg in var.lb_target_config : lb_cfg.name => lb_cfg }

  name                          = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-lb-tg"
  port                          = each.value.target_port
  protocol                      = each.value.target_protocol
  protocol_version              = each.value.protocol_version
  load_balancing_algorithm_type = each.value.load_balancing_algorithm_type
  slow_start                    = each.value.slow_start
  target_type                   = each.value.target_type
  vpc_id                        = var.vpc_id

  health_check {
    healthy_threshold   = each.value.health_check_healthy_threshold
    interval            = each.value.health_check_interval
    matcher             = each.value.health_check_matcher
    path                = each.value.health_check_path
    port                = each.value.health_check_port
    protocol            = each.value.health_check_protocol
    timeout             = each.value.health_check_timeout
    unhealthy_threshold = each.value.health_check_unhealthy_threshold
  }

  stickiness {
    cookie_duration = var.cookie_duration
    enabled         = var.enabled
    type            = var.type
  }

  lifecycle {
    create_before_destroy = true
  }
  tags = var.tags
}
