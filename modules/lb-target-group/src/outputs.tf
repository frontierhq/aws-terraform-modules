output "target_group_arns" {
  value = {
    for k, v in aws_lb_target_group.main : k => v.arn
  }
}
