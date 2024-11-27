variable "tags" {
  description = "Global tags for all resources"
  type        = map(string)
  default     = {
    Environment = "Dev"
    Project     = "TerraformS3"
  }
}