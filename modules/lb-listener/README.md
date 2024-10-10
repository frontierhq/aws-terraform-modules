# Load Balancer Listener

This module creates an [Load Balancer Listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener).

## Usage

```hcl
module "aws_lb_listener" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/lb-listener/[VERSION]/module.tar.gz//src"

  load_balancer_arn = aws_lb.front_end.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Fixed response content"
      status_code  = "200"
    }
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
