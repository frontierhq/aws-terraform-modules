# DB Instance

This module creates a [DB Instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) and an associated [IAM Role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) for monitoring.

## Usage

```hcl
module "db_instance" {
  source = "https://github.com/gofrontier-com/aws-terraform-modules/releases/download/db-instance/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region
  zone        = var.zone

  backup_retention_period = 0
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  engine                  = var.engine
  kms_key_id              = aws_kms_key.rds_kms.arn
  username                = var.username
  vpc_security_group_ids  = [module.rds_security_group.id]

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/gofrontier-com/aws-terraform-modules/blob/main/README.rst#contributing>.
