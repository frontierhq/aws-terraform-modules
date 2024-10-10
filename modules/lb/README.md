# Load Balancer

This module creates an [Application Load Balancer](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb).

## Usage

```hcl
module "lb_instance" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/lb/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region


}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
