output "s3_bucket_arn" {
  value = module.s3.bucket_arn
}

output "dynamodb_table_arn" {
  value = module.dynamodb.table_arn
}
