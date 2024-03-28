resource "aws_security_group" "main" {
  name        = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${local.identifier}-sg"
  vpc_id      = var.vpc_id
  description = var.description

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      description     = ingress.value.description
      from_port       = ingress.value.from_port
      to_port         = ingress.value.to_port
      protocol        = ingress.value.protocol
      cidr_blocks     = ingress.value.cidr_blocks
      prefix_list_ids = ingress.value.prefix_list_ids
      self            = ingress.value.self
    }
  }

  dynamic "egress" {
    for_each = var.egress_rules
    content {
      description     = egress.value.description
      from_port       = egress.value.from_port
      to_port         = egress.value.to_port
      protocol        = egress.value.protocol
      cidr_blocks     = egress.value.cidr_blocks
      prefix_list_ids = egress.value.prefix_list_ids
      self            = egress.value.self
    }
  }

  tags = merge(
    {
      Name = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${local.identifier}-sg"
    },
    var.tags
  )
}
