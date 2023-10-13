terraform {
  required_providers {
    aws = "5.21.0"
  }
  backend "s3" {
    region  = "ap-northeast-1"
    bucket  = "runble1-tfstate"
    key     = "trivy_aws_security/env/dev.tfstate"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-northeast-1"
  default_tags {
    tags = {
      Env    = "dev"
      System = "security"
    }
  }
}