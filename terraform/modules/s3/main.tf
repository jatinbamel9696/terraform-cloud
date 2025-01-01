resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  object_lock_enabled = true
  tags = var.tags
}
resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
    mfa_delete =  var.enable_mfa ? "Enabled" : "Disabled" 
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = var.kms_key_arn
    }
  }
}

