variable "tags" {
  description = "Global tags for all resources"
  type        = map(string)
  default     = {
    Environment = "Dev"
    Project     = "TerraformS3"
  }
}

variable "region" {
  description = "aws region"
  type = string
}

variable "aws_account_id" {
  description = "aws region"
  type = string
}