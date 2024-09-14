provider "aws" {
  region = local.region
}

terraform {
  backend "s3" {
    bucket = "jhtoigo-terraform-linuxtips"
    key    = "tf-intensivo/projeto-final/apps/node-pg-test"
    region = "us-east-1"
  }
}