# AWS ECR Terraform Module
Terraform Project for AWS ECR

## Associated Documents
Please read our [LICENSE][lice], [CONTRIBUTING][cont], and [CHANGES][chge]
documents before working in this project and anytime they are updated.

## Overview
This is the ECR configuration we recommend.

### Our ECR has the following features
- Our common naming and tagging module
- `IMMUTABLE` image tags
- `force_delete` set so resources can easily be managed via Terrraform
- `kms_key` keys so `tfsec` does not flag the implementation
- `scan_on_push` enabled

[chge]: ./CHANGES.md
[cont]: ./CONTRIBUTING.md
[lice]: ./LICENSE.md
