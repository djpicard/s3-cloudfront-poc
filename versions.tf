terraform {
  required_version = ">= 1.0.0"

  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.64"
    }
  }
}

provider "aws" {
  region = var.region
}