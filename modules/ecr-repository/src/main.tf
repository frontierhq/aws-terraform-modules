resource "aws_ecr_repository" "main" {
  name                 = "${var.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-ecr"
  image_tag_mutability = var.image_tag_mutability
  force_delete         = var.force_delete

  encryption_configuration {
    encryption_type = var.encryption_type
    kms_key         = var.kms_key
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = merge(
    {
      Name = "${var.identifier}-${var.environment}-${lookup(local.short_regions, var.region)}-ecr"
    },
  var.tags)
}
