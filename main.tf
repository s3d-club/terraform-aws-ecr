module "name" {
  source = "github.com/s3d-club/terraform-external-name?ref=v0.1.1"

  context = var.name_prefix
  path    = path.module
  tags    = var.tags
}

resource "aws_ecr_repository" "this" {
  force_delete         = true
  image_tag_mutability = "IMMUTABLE"
  name                 = module.name.prefix
  tags                 = module.name.tags

  image_scanning_configuration {
    scan_on_push = true
  }
}
