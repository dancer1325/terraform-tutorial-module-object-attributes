# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Terraform configuration

provider "aws" {
  region = "us-west-2"

  default_tags {
    tags = {
      hashicorp-learn = "module-object-attributes"
    }
  }
}

module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website"

  bucket_prefix = "module-object-attributes-"

  // Different options of files input variable
  // 1.
  /*files = {
    terraform_managed = false
  }*/
  // 2.
  files = {
    terraform_managed = true
    www_path          = "${path.root}/www"
  }
  // 3.
  /*files = {
    terraform_managed = true
    www_path          = "${path.root}/www"
    // non-first-capital sensitive
    Index_document_suffix = "main.html"
    Error_document_key = "error.html"
  }*/

  // object attribute
  cors_rules = [
    {
      allowed_headers = ["*"],
      allowed_methods = ["PUT", "POST"],
      allowed_origins = ["https://test.example.com"],
      expose_headers  = ["ETag"],
      max_age_seconds = 3000
    },
    {
      allowed_methods = ["GET"],
      allowed_origins = ["*"]
    }
  ]

  // object attribute
  tags = {
    terraform     = "true"
    environment   = "dev"
    public-bucket = true
  }
}
