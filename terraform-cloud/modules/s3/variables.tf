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
