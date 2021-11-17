<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.64 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.64 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudfront_peloton"></a> [cloudfront\_peloton](#module\_cloudfront\_peloton) | spacelift.io/djpicard/cloudfront-peloton/aws | 0.1.4 |
| <a name="module_s3_peloton"></a> [s3\_peloton](#module\_s3\_peloton) | spacelift.io/djpicard/s3-peloton/aws | 0.1.4 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudfront_origin_access_identity.cloudfront_origin_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the bucket | `string` | `"spacelift"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region to use for aws | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket"></a> [bucket](#output\_bucket) | Bucket in use |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
