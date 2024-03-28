resource "aws_ecr_repository" "main" {
  name                 = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${var.identifier}-ecr"
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
      Name = "${var.zone}-${var.environment}-${lookup(local.short_regions, var.region)}-${var.identifier}-ecr"
    },
  var.tags)
}

data "aws_iam_policy_document" "main" {
  statement {
    sid    = "ECR Policy"
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = var.identifiers
    }

    actions = var.actions
  }
}

resource "aws_ecr_repository_policy" "main" {
  repository = aws_ecr_repository.main.name
  policy     = data.aws_iam_policy_document.main.json
}
