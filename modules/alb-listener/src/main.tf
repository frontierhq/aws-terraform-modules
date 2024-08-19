resource "aws_lb_listener" "main" {
  for_each = { for listener in var.listener_config : listener.name => listener }

  load_balancer_arn = var.aws_lb_arn
  port              = each.value.port
  protocol          = each.value.protocol
  certificate_arn   = each.value.certificate_arn

  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      status_code  = "404"
    }
  }

  tags = merge(
    {
      Name = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-listener"
    },
  var.tags)
}
