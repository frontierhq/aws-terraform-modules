# DB Parameter Group

This module creates a [db parameter group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group).

## Usage

```hcl
module "db_instance" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/db-parameter-group/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  description = var.description
  engine      = var.engine
  family      = var.family

  parameters = [
    {
      name  = "client_encoding"
      value = "utf8"
    }
  ]

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
