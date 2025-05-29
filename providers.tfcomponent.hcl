terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.4.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4.0"
    }
  }
}

provider "aws" {
  region = var.default_region

  assume_role {
    role_arn = var.role_arn
  }

  default_tags {
    tags = var.default_tags
  }
}

provider "random" "this" {}

provider "archive" "this" {}

provider "local" "this" {}
