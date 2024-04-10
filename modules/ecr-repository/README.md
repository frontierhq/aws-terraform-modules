# ECR Repository

This module creates an [ECR Repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository).

## Usage

```hcl
module "ecr_repository" {
  source = "https://github.com/gofrontier-com/aws-terraform-modules/releases/download/ecr-repository/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/gofrontier-com/aws-terraform-modules/blob/main/README.rst#contributing>.
