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
  # access_key = data.aws_secretsmanager_secret_version.current.secret_string.access_key
  # secret_key = data.aws_secretsmanager_secret_version.current.secret_string.secret_key

  }


  