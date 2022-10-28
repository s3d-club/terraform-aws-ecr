variable "kms_key_arn" {
  type = string

  description = <<-EOT
    The ARN for a KMS key.
    EOT
}

variable "name_prefix" {
  type = string

  description = <<-EOT
    A prefix for the ECR name.
    EOT
}

variable "tags" {
  default = {}
  type    = map(string)

  description = <<-EOT
    Tags for resources.
    EOT
}
