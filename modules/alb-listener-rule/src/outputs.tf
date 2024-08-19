# output "listener_arn" {
#   value = aws_lb_listener_rule.main.listener_arn
# }

output "listener_arns" {
  value = {
    for k, v in aws_lb_listener_rule.main : k => v.listener_arn
  }
}
