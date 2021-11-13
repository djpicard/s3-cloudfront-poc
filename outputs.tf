output "bucket" {
  description = "Bucket in use"
  value       = module.s3_peloton.bucket_id
}