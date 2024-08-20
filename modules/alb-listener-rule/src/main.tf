resource "aws_lb_listener_rule" "main" {
  for_each = { for rule in var.listener_rules_config : rule.listener_name => rule }

  listener_arn = var.listener_arns[each.value.listener_name]
  priority     = each.value.priority

  action {
    type             = "forward"
    target_group_arn = var.target_group_arns[each.value.target_group_name]
  }

  condition {
    host_header {
      values = each.value.values
    }
  }
}
