output "listener_arns" {
  value = {
    for k, v in aws_lb_listener.main : k => v.arn
  }
}
