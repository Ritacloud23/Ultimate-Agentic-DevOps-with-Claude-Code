# S3 backend for Terraform remote state.
#
# First-run instructions:
#   1. Create a dedicated S3 bucket (and an optional DynamoDB table for state
#      locking) OUTSIDE of this configuration — for example via the AWS console
#      or a one-off CLI command. Versioning must be enabled on the state bucket.
#   2. With this backend block still commented out, run `terraform init`
#      followed by `terraform apply` so the site resources exist.
#   3. Uncomment the backend block below, replacing the placeholders with your
#      bucket name, state key, region, and (optionally) DynamoDB lock table.
#   4. Run `terraform init -migrate-state` to move the local state into S3.
#
# Example backend block (uncomment and edit before running
# `terraform init -migrate-state`):
#
# terraform {
#   backend "s3" {
#     bucket         = "your-tf-state-bucket-name"
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "your-tf-state-lock-table"
#   }
# }
