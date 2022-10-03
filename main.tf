module "name" {
  source = "github.com/s3d-club/terraform-external-name?ref=v0.1.1"

  context = var.name_prefix
  path    = path.module
  tags    = var.tags
}

resource "aws_ecr_repository" "this" {
  name         = module.name.prefix
  tags         = module.name.tags
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }
}
