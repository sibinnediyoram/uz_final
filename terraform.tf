terraform {
  required_version = "~> 0.12.24" # which means ">= 0.12.24" and "< 0.13"
  backend "s3" {
    bucket  = "uz-app-infra-eu"
    key     = "aws/development/terraform.tfstate"
    region  = "eu-central-1"
    profile = "default"
  }
}