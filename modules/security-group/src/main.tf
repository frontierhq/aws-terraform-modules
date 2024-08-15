resource "aws_security_group" "main" {
  name        = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-sg"
  vpc_id      = var.vpc_id
  description = var.description

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      cidr_blocks     = ingress.value.cidr_blocks
      description     = ingress.value.description
      from_port       = ingress.value.from_port
      prefix_list_ids = ingress.value.prefix_list_ids
      protocol        = ingress.value.protocol
      security_groups = ingress.value.security_groups
      self            = ingress.value.self
      to_port         = ingress.value.to_port
    }
  }

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      cidr_blocks     = egress.value.cidr_blocks
      description     = egress.value.description
      from_port       = egress.value.from_port
      prefix_list_ids = egress.value.prefix_list_ids
      protocol        = egress.value.protocol
      security_groups = egress.value.security_groups
      self            = egress.value.self
      to_port         = egress.value.to_port
    }
  }

  tags = merge(
    {
      Name = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-sg"
    },
    var.tags
  )
}
