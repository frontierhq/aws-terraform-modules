output "arn" {
  # value = aws_lb_listener.main.arn
  value = {
    for k, v in aws_lb_listener.main : k => v.arn
  }
}

output "certificate_arn" {
  # value = aws_lb_listener.main.certificate_arn
  value = {
    for k, v in aws_lb_listener.main : k => v.certificate_arn
  }

}
