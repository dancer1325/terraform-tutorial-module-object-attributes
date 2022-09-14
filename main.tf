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
  source = "./modules/aws-s3-static-website-bucket"

  bucket_prefix = "module-object-attributes-"

  tags = {
    terraform     = "true"
    environment   = "dev"
    public-bucket = true
  }
}
