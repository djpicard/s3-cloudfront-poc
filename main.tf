module "s3_peloton" {
  source = "spacelift.io/djpicard/s3-peloton/aws"

  # name   = string
  region = var.region
}

resource "aws_cloudfront_origin_access_identity" "cloudfront_origin_access" {}

module "cloudfront_peloton" {
  source  = "spacelift.io/djpicard/cloudfront-peloton/aws"
  version = "0.1.2"

  # Required inputs 
  bucket_name = module.s3_peloton.bucket_id

  # Optional inputs 
  acm_certificate_arn = "arn:aws:acm:us-east-1:152245890419:certificate/fae33519-87e6-40b1-b3c6-177d13222af1"
  aliases             = ["spacelift.onepeloton.com"]
  # cache_behavior_allowed_methods = list(any)
  # cache_behavior_cached_methods  = list(any)
  # cloudfront_default_certificate = false
  # comment                        = string
  default_root_object = ""
  # enabled                        = bool
  # is_ipv6_enabled                = bool
  # lambda_arn                     = string
  logging_config_bucket = module.s3_peloton.log_bucket_id
  # logging_config_include_cookies = bool
  origin_access_identity = aws_cloudfront_origin_access_identity.cloudfront_origin_access.id
  # price_class                    = string
  region = var.region
}