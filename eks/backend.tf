terraform {
  required_version = ">= 1.9.3, < 2.0.0"  # Allows 1.15.x versions, including 1.15.6
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "amal-tf-bucket"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    use_lockstate  = true
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
