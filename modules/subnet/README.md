# Subnet

This module creates a [Subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet).

## Usage

```hcl
module "subnet" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/subnet/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  accessibility     = "public"
  availability_zone = data.aws_availability_zones.available_zones.names[0]
  cidr_block        = "10.10.10.0/27"
  vpc_id            = module.vpc.id

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
