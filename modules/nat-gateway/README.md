# NAT Gateway

This module creates a [NAT Gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway).

## Usage

```hcl
module "nat_gateway" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/nat-gateway/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  allocation_id = aws_eip.nat_gw_ip.id
  subnet_id     = module.public_subnet.id

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
