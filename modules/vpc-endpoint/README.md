# VPC Endpoint

This module creates a [VPC Endpoint](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint).

## Usage

```hcl
module "vpc_endpoint" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/vpc-endpoint/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region

  route_table_ids = [aws_route_table.private.id]
  service_name    = "com.amazonaws.eu-west-2.s3"
  vpc_id          = module.vpc.id

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
