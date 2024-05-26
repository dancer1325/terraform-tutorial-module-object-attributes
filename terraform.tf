# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  // HCP account
  /*cloud {
    workspaces {
      name = "learn-terraform-module-object-attributes"
    }
  }*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.24.0"
    }
  }

  required_version = "~> 1.3"
}
