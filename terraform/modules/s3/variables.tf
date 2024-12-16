variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "ACL for the bucket (e.g., private, public-read)"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
}

variable "region" {
  description = "The AWS region where the bucket will be created."
  type        = string
  default     = "us-east-1"
}

variable "kms_key_arn" {
  description = "The ARN of the KMS key to use for S3 bucket encryption. If not provided, the default S3-managed key will be used."
  type        = string
  default     = null
}


variable "enable_mfa" {
  type = bool
  default = true
}