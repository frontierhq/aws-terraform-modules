# EC2 Instance

This module creates an [EC2 Instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance).

## Usage

```hcl
module "ec2_instance" {
  source = "https://github.com/frontierhq/aws-terraform-modules/releases/download/ec2-instance/[VERSION]/module.tar.gz//src"

  environment = var.environment
  identifier  = var.identifier
  region      = var.region

  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3a.small"
  subnet_id              = module.public_subnet.id
  vpc_security_group_ids = [module.ec2_sg.id]

  tags = {
    WorkloadType = "MortgagesLZ/ai-services"
  }
}
```

## Known issues

## Contributing

See <https://github.com/frontierhq/aws-terraform-modules/blob/main/README.rst#contributing>.
