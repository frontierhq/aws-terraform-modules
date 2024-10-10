# Load Balancer Listener Rule

This module creates an [Load Balancer Listener Rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule).

## Usage

```hcl
module "aws_lb_listener_rule" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/lb-listener-rule/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region

  listener_arn = aws_lb_listener.front_end.arn
  priority     = 99

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.static.arn
  }

  condition {
    host_header {
      values = ["my-service.*.domain.com"]
    }
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
