provider "aws" {
  region  = "eu-central-1"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
      bucket = "backend-terraform-lb-01s"
      key    = "terraform-bucket.tfstate"
      region = "eu-central-1"
  }
}
