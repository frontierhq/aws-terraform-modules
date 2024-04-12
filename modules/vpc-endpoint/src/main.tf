resource "aws_vpc_endpoint" "main" {
  vpc_id              = var.vpc_id
  service_name        = var.service_name
  auto_accept         = var.auto_accept
  policy              = var.policy
  vpc_endpoint_type   = var.vpc_endpoint_type
  route_table_ids     = var.route_table_ids
  private_dns_enabled = var.private_dns_enabled
  subnet_ids          = var.subnet_ids
  security_group_ids  = var.security_group_ids

  tags = merge(
    {
      Name = "${var.zone}-${var.environment}-${local.identifier}-${lookup(local.short_regions, var.region)}-vep"
    },
    var.tags
  )
}
