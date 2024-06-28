# VPC

This module creates a [VPC](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc).

## Usage

```hcl
module "vpc" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/vpc/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  cidr_block = "10.10.10.0/24"

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
