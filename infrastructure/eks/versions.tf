terraform {
  required_version = "= 1.12.3"

  backend "s3" {
    bucket       = var.state_bucket_name
    key          = var.state_file_key
    region       = var.aws_region
    use_lockfile = true

    assume_role_with_web_identity = {
      role_arn                = var.aws_state_role_arn
      web_identity_token_file = var.aws_web_identity_token_file
      session_name            = "github-actions-state"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 6.52.0"
    }
  }
}