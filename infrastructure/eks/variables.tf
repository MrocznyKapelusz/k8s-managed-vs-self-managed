variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "aws_deploy_role_arn" {
  description = "IAM role assumed by the AWS provider"
  type        = string
}

variable "aws_state_role_arn" {
  description = "IAM role assumed by the AWS provider"
  type        = string
}

variable "state_bucket_name" {
  description = "S3 bucket used for OpenTofu state"
  type        = string
}

variable "state_file_key" {
  description = "S3 object key used for OpenTofu state"
  type        = string
}

variable "aws_web_identity_token_file" {
  description = "Path to the GitHub OIDC token file"
  type        = string
}
