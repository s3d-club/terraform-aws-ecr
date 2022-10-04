# AWS ECR Terraform Module
Terraform Project for AWS ECR

## Other Documents
Please read our [LICENSE][lice], [CONTRIBUTING][cont], [CODE-OF-CONDUCT][code],
and [CHANGES][chge] documents before working in this project and anytime they
are update.

## Overview
This is the ECR configuration we recommend.

### Our ECR has the following features
- Our common naming and tagging module
- `IMMUTABLE` image tags because tags should not change!
- `force_delete` set so it can easily be managed via Terrraform
- `kms_key` keys so `tfsec` does not flag the implementation
- `scan_on_push` because we live in a world that requires a lot of scanning

[chge]: ./CHANGES.md
[code]: ./CODE-OF-CONDUCT.md
[cont]: ./CONTRIBUTING.md
[lice]: ./LICENSE.md
