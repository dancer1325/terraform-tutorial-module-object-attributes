# AWS S3 static website

This module provisions AWS S3 buckets configured for static website hosting.

## Notes
* providers NOT specified
  * Reason: inherit from root module
* modules
  * consume 'hashicorp/dir/template'
* [aws_s3_bucket_website_configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration)
* [hashicorp/dir/template](https://registry.terraform.io/modules/hashicorp/dir/template/latest)
  * := module which
    * allows
      * preparing static files & templates under a particular directory `base_dir`
* CORS
  * allows
    * limiting access to websites -- based on --
      * request headers
      * request method
      * originating domain
* [aws_s3_bucket_cors_configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration)