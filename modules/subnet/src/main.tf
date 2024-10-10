resource "aws_subnet" "main" {
  availability_zone = var.availability_zone
  cidr_block        = var.cidr_block
  vpc_id            = var.vpc_id

  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = merge(
    {
      Name = "${local.identifier}-${var.environment}-${replace(var.availability_zone, "-", "")}-${var.accessibility}"
    },
    var.tags
  )
}
