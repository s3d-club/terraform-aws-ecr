module "name" {
  source = "git::https://github.com/s3d-club/terraform-external-data-name-tags?ref=0.0.6"

  name_prefix = var.name_prefix
  path        = path.module
  size        = 0
  tags        = var.tags
}

resource "aws_ecr_repository" "this" {
  name = module.name.name_prefix
  tags = module.name.tags
}
