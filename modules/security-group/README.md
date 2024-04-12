# Security Group

This module creates a [Security Group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group).

## Usage

```hcl
module "security_group" {
  source = "https://github.com/gofrontier-com/aws-terraform-modules/releases/download/security_group/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  description = "Postgres Public Access"
  vpc_id      = module.vpc.id

  ingress_rules = [
    {
      description =  "Postgres Inbound"
      from_port   = 5432
      to_port     = 5432
      protocol    = "tcp"
      cidr_blocks = ["1.2.3.4/32"]
    }
  ]

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/gofrontier-com/aws-terraform-modules/blob/main/README.rst#contributing>.
