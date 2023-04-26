# zaman2

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  # access_key = "AKIAXLW2ED6IHJ7A2HMP"
  # secret_key = "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"
  access_key = "AKIASIUNHVMNDDBRTA62"
  secret_key = "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"

}


