variable "kms_key_arn" {
  type = string

  description = <<-EOT
    KMS Key
    https://go.s3d.club/aws-ecr#kms_key
    EOT
}

variable "name_prefix" {
  type = string

  description = <<-EOT
    Name Prefix
    https://go.s3d.club/aws-ecr#name_prefix
    EOT
}

variable "tags" {
  default = {}
  type    = map(string)

  description = <<-EOT
    Tags
    https://go.s3d.club/aws-ecr#tags
    EOT
}
