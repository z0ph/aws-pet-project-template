provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {
    bucket = "zoph-terraform-artifacts"
    key    = "tfstate"
    region = "eu-west-1"
  }
}