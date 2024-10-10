resource "aws_nat_gateway" "main" {
  allocation_id     = var.allocation_id
  connectivity_type = var.connectivity_type
  private_ip        = var.private_ip
  subnet_id         = var.subnet_id

  tags = merge(
    {
      Name = "${local.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-ngw"
    },
    var.tags
  )
}
