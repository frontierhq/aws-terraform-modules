# Service Discovery service

This module creates a [Service Discovery Service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/service_discovery_service).

## Usage

```hcl
module "service_discovery_service" {
  source = "https://github.com/gofrontier-com/aws-terraform-modules/releases/download/service_discovery_service/[VERSION]/module.tar.gz//src"

  name         = "nginx"
  namespace_id = aws_service_discovery_private_dns_namespace.main.id

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/gofrontier-com/aws-terraform-modules/blob/main/README.rst#contributing>.
