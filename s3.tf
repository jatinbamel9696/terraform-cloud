module "s3" {
  source      = "./modules/s3"
  bucket_name = local.s3_bucket_name
  acl         = "private"
  tags        = var.tags
}