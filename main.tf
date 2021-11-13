module "s3_peloton" {
  source = "spacelift.io/djpicard/s3-peloton/aws"

  # name   = string
  region = var.region
}

module "cloudfront_peloton" {
  source = "spacelift.io/djpicard/cloudfront-peloton/aws"

  # Required inputs 
  bucket_name = module.s3_peloton.bucket_id

  # Optional inputs 
  # acm_certificate_arn            = string
  # aliases                        = list(any)
  # cache_behavior_allowed_methods = list(any)
  # cache_behavior_cached_methods  = list(any)
  # cloudfront_default_certificate = bool
  # comment                        = string
  default_root_object = ""
  # enabled                        = bool
  # is_ipv6_enabled                = bool
  # lambda_arn                     = string
  logging_config_bucket = module.s3_peloton.log_bucket_id
  # logging_config_include_cookies = bool
  # origin_access_identity         = string
  # price_class                    = string
  region = var.region
}