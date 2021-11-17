variable "region" {
  description = "Region to use for aws"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the bucket"
  type        = string
  default     = "spacelift"
}