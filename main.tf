provider "aws" {
  region  = var.region
  version = "~> 2.0"
}

# Back-end é carregado extremamente cedo (executa primeiro).
# Por esse motivo, as interpolações não podem ser usadas na configuração de back-end.
terraform {
  backend "s3" {
      bucket = "backend-terraform-lb-01s"
      key    = "terraform-bucket.tfstate"
      region = "eu-central-1"
  }
}
