# Learn Terraform Modules - Object Attributes
This repository is a companion to the [Customize Modules with Object
Attributes](https://learn.hashicorp.com/tutorials/terraform/module-object-attributes?in=terraform/modules)
tutorial.

## Goal
* Object attributes in your Terraform modules
  * how to use
  * why to use
    * make easier to understand the module

## Prerequisites
* Terraform [v1.2+](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) installed locally
* AWS account with [associated credentials](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration)
  * via
    * add in the 'provider' block
    * environment variables
      * 'AWS_ACCESS_KEY_ID'
      * 'AWS_SECRET_ACCESS_KEY'
      * 'AWS_REGION'
    * credential files
      * `aws config` & pass the 'AWS_ACCESS_KEY_ID' & 'AWS_SECRET_ACCESS_KEY'
* [HCP account](https://developer.hashicorp.com/terraform/cloud-docs)
  * comment it to skip




## How to run?
* `terraform init`
* `terraform apply`
* Open in your desired browser 'output.website_bucket_endpointVALUE' and check the static resources accessible

## Notes
* Structure
  * '/modules'
    * submodule of the root module == local module
    * if you want to use it -> in the `module.source` refers to relative path
* `path.*`
  * [Reference to values](https://developer.hashicorp.com/terraform/language/expressions/references#filesystem-and-workspace-info)