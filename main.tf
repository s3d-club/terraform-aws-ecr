module "name" {
  source = "git::https://github.com/s3d-club/terraform-external-data-name-tags?ref=v0.1.0"

  name_prefix = var.name_prefix
  path        = path.module
  tags        = var.tags
}

resource "aws_ecr_repository" "this" {
  name         = module.name.name_prefix
  tags         = module.name.tags
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }
}
