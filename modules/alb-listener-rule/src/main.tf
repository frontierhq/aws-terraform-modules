resource "aws_lb_listener_rule" "main" {
  for_each = { for rule in var.listener_rules_config : "${rule.listener_name}-${rule.priority}" => rule }

  listener_arn = var.aws_lb_listener_listener_arns[each.value]
  priority     = each.value.priority

  action {
    type             = "forward"
    target_group_arn = var.aws_lb_target_group_arns[each.value.target_group_name]
  }

  condition {
    host_header {
      values = each.value.values
    }
  }
}
