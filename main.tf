module "s3_peloton" {
  source = "spacelift.io/djpicard/s3-peloton/aws"

  # name   = string
  region = var.region
}

resource "aws_cloudfront_origin_access_identity" "cloudfront_origin_access" {}

module "cloudfront_peloton" {
  source  = "spacelift.io/djpicard/cloudfront-peloton/aws"
  version = "0.1.3"

  # Required inputs 
  comment        = ""
  logging_bucket = module.s3_peloton.logging_bucket

  # Optional inputs 
  domain_name = "spacelift.dev-benefits.onepeloton.com"
  region      = var.region
}