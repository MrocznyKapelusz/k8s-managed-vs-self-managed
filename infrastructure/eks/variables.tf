variable "aws_region" {
  description = "AWS region"
  type        = string
  sensitive   = true
}

variable "aws_deploy_role_arn" {
  description = "IAM role assumed by the AWS provider"
  type        = string
  sensitive   = true
}

variable "aws_state_role_arn" {
  description = "IAM role assumed by the AWS provider"
  type        = string
  sensitive   = true
}

variable "state_bucket_name" {
  description = "S3 bucket used for OpenTofu state"
  type        = string
  sensitive   = true
}

variable "state_file_key" {
  description = "S3 object key used for OpenTofu state"
  type        = string
  sensitive   = true
}

variable "aws_web_identity_token_file" {
  description = "Path to the GitHub OIDC token file"
  type        = string
  sensitive   = true
}
