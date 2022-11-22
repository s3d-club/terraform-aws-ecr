module "name" {
  source = "github.com/s3d-club/terraform-external-name?ref=v0.1.20"

  context = var.name_prefix
  keepers = { kms_key_arn = var.kms_key_arn, v = "1" }
  path    = path.module
  tags    = var.tags
}

# tfsec:ignore:aws-ecr-enforce-immutable-repository
resource "aws_ecr_repository" "this" {
  force_delete = true
  name         = module.name.prefix
  tags         = module.name.tags

  encryption_configuration {
    encryption_type = "KMS"
    kms_key         = var.kms_key_arn
  }

  image_scanning_configuration {
    scan_on_push = true
  }
}
