module "name" {
  source = "github.com/s3d-club/terraform-external-name?ref=v0.1.10"

  keepers = { kms_key_arn = var.kms_key_arn, v = "1" }
  context = var.name_prefix
  path    = path.module
  tags    = var.tags
}

resource "aws_ecr_repository" "this" {
  force_delete         = true
  image_tag_mutability = "IMMUTABLE"
  name                 = module.name.prefix
  tags                 = module.name.tags

  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = var.kms_key_arn
  }

  image_scanning_configuration {
    scan_on_push = true
  }
}
