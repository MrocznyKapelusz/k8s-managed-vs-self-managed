provider "aws" {
  region = var.aws_region

  assume_role_with_web_identity {
    role_arn                = var.aws_deploy_role_arn
    web_identity_token_file = var.aws_web_identity_token_file
    session_name            = "github-actions-deploy"
  }
}